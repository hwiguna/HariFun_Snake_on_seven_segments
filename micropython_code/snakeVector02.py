# Starting on new directional based vector rather than two points

from machine import ADC, Pin, Timer
import time
import Button
import gc


# === Supporting classes ===
class point:
    def __init__(self, x, y):
        self.x = x
        self.y = y


class vector:
    def __init__(self, p, direction):
        self.p = p
        self.d = direction


d_to_direction = {
    0: "Right",
    1: "Down",
    2: "Left",
    3: "Up"
}


def print_vector(label, v):
    print(label, ": vector=(", v.p.x, ",", v.p.y, ") (", d_to_direction.get(v.d), ")")


# No matter what row and column of the display,
# this function normalizes it to the the x,y at row,col=0,0
def normalize_vector(v):
    return vector(point(v.p.x % 2, v.p.y % 3), v.d)

#    XY      Direction   Segment
# 0,0--1,0       3        --a--
#  |    |        ^       f     b
# 0,1--1,1   2<--|--> 0   --g--
#  |    |        v       e     c
# 0,2--1,2       1        --d--
# Each vertex is represented as decimal xyd
# xy is the TIP of the snake head, d is movement direction
vector_to_seg = {
    100: 0,  # segment a, rightward -->
    2: 0,  # segment a, leftward <--

    111: 1,  # segment b, downward vvv
    103: 1,  # segment b, upward  ^^^

    121: 2,  # segment c, downward vvv
    113: 2,  # segment c, upward ^^^

    120: 3,  # segment d, rightward -->
    22: 3,  # segment d, leftward <--

    21: 4,  # segment e, downward vvv
    13: 4,  # segment e, upward ^^^

    11: 5,  # segment f, downward vvv
    3: 5,  # segment f, upward ^^^

    110: 6,  # segment g, rightward -->
    12: 6,  # segment g, leftward <--
}


def to_segment_letter(segment_index):
    return chr(ord('a') + segment_index)


def to_seg(v):
    vn = normalize_vector(v)
    seg = vector_to_seg.get(vn.p.x * 100 + vn.p.y * 10 + v.d, -1)
    # print("Segment", to_segment_letter(seg), " (", seg, ")")
    return seg


def to_row_col(p):
    return p.y // 3, p.x // 2


def to_rowcolseg(v):
    # print_vector("to_rowcolseg: ", v)
    row, col = to_row_col(v.p)
    seg = to_seg(v)
    # print("row, col, seg: ", row, col, seg)
    return row, col, seg


def forward(v):
    mapping = {
        0: point(v.p.x+1, v.p.y),
        1: point(v.p.x, v.p.y+1),
        2: point(v.p.x-1, v.p.y),
        3: point(v.p.x, v.p.y-1),
    }
    new_point = mapping.get(v.d)
    return vector(new_point, v.d)


def turn_left(v):
    mapping = {
        0: vector(point(v.p.x, v.p.y-1), 3),
        1: vector(point(v.p.x+1, v.p.y), 0),
        2: vector(point(v.p.x, v.p.y+1), 1),
        3: vector(point(v.p.x-1, v.p.y), 2)
    }
    return mapping.get(v.d)


def turn_right(v):
    mapping = {
        0: vector(point(v.p.x, v.p.y+1), 1),
        1: vector(point(v.p.x-1, v.p.y), 2),
        2: vector(point(v.p.x, v.p.y-1), 3),
        3: vector(point(v.p.x+1, v.p.y), 0)
    }
    return mapping.get(v.d)


# === SNAKE ===
class snakeVector02:
    def __init__(self):
        # === Shift Register ===
        self.clock = Pin(5, Pin.OUT)
        self.data = Pin(4, Pin.OUT)
        self.latch = Pin(2, Pin.OUT)

        # === Column Transistors ===
        self.last_column = 0
        self.column_max = 6
        self.columns = [Pin(0, Pin.OUT),
                        Pin(15, Pin.OUT),
                        Pin(13, Pin.OUT),
                        Pin(12, Pin.OUT),
                        Pin(14, Pin.OUT),
                        Pin(16, Pin.OUT)]

        self.button = Button.Button()
        self.direction = 0
        self.bitmap = bytearray(6)  # Six bytes represents six bytes in shift registers
        self.snake = [vector(point(1, 1), 0)]

    @micropython.native
    def shift_out(self, bits):
        for i in range(8):
            value = bits & (1 << i)  # Is bit set or cleared?
            self.data.value(1 if value > 0 else 0)
            self.clock.on()  # pulsing clock HIGH then LOW to shift data
            self.clock.off()

    @micropython.native
    def refresh(self, timer):
        new_col = self.last_column + 1 if (self.last_column + 1) < self.column_max else 0
        segment_bits = self.bitmap[new_col]

        self.latch.off()  # Don't show changes to the bits on the output lines
        self.shift_out(segment_bits)
        self.columns[self.last_column].off()
        self.latch.on()  # Show data on output lines

        self.columns[new_col].on()
        self.last_column = new_col  # This will be the new column, next time round.

    def plot_vector(self, v):
        row, col, seg = to_rowcolseg(v)
        if seg != -1:
            self.bitmap[col] = self.bitmap[col] | (1 << (7-seg))

    def erase_vector(self, v):
        row, col, seg = to_rowcolseg(v)
        if seg != -1:
            self.bitmap[col] = self.bitmap[col] & ~(1 << (7-seg))

    def setupBitmap(self):
        self.bitmap[0] = ~ 0b10000000
        self.bitmap[1] = ~ 0b01000000
        self.bitmap[2] = ~ 0b00100000
        self.bitmap[3] = ~ 0b00010000
        self.bitmap[4] = ~ 0b00001000
        self.bitmap[5] = ~ 0b00000100
        self.bitmap[5] = 0b11110000
        # self.plot_vector(vector(point(2, 0), 0))
        # self.plot_vector(vector(point(3, 1), 2))
        # self.plot_vector(vector(point(1, 0), 0))

    def main(self):
        # self.setupBitmap()

        flash = Timer(0)
        flash.init(freq=72*6*5, mode=Timer.PERIODIC, callback=self.refresh)

        self.plot_vector(self.snake[0])

        while True:
            button_press = self.button.read_button()
            if button_press != -1:
                head = self.snake[0]
                if button_press == 3:
                    new_head = forward(head)
                elif button_press == 0:
                    new_head = turn_right(head)
                elif button_press == 2:
                    new_head = turn_left(head)

                # Draw & save new head
                self.plot_vector(new_head)
                self.snake.insert(0, new_head)

                # Erase old tail
                last_index = len(self.snake)-1
                if last_index > 2:
                    tail = self.snake[last_index]
                    self.erase_vector(tail)
                    self.snake.pop(last_index)

                #time.sleep_ms(50)  # poorman's debouncer
                time.sleep(0.5)  # poorman's debouncer
            time.sleep_ms(5)  # Don't call adc read too often


instance = snakeVector02()
instance.main()
