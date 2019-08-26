from machine import Pin, Timer
import time


class ShiftRegisterSpeedTest_esp32:
    def __init__(self):
        # === Shift Register ===
        self.clock = Pin(18, Pin.OUT)
        self.data = Pin(19, Pin.OUT)
        self.latch = Pin(23, Pin.OUT)
        self.row_max = 5  # Five rows of transistor drivers
        self.col_max = 8  # Eight columns of shift registers
        self.bitmap = []
        self.bit_values = [128,64,32,16,8,4,2,1]

        # === Column Transistors ===
        self.previous_row = 0
        self.row_pins = [Pin(16, Pin.OUT),
                         Pin(17, Pin.OUT),
                         Pin(5, Pin.OUT),
                         Pin(21, Pin.OUT),
                         Pin(22, Pin.OUT)]

        # self.bitmap.append([0, 0, 0, 0, 0, 0, 0, 0])  # row 3
        # self.bitmap.append([0, 0, 0, 0, 0, 0, 0, 0])  # row 3
        # self.bitmap.append([0, 0, 0, 0, 0, 0, 0, 0])  # row 3
        # self.bitmap.append([0, 0, 0, 0, 0, 0, 0, 0])  # row 3
        # self.bitmap.append([0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff])  # row 4
        self.bitmap.append([1, 0, 0, 0, 0, 0, 0, 0])  # row 0
        self.bitmap.append([2, 0, 0, 0, 0, 0, 0, 0])  # row 1
        self.bitmap.append([3, 0, 0, 0, 0, 0, 0, 0])  # row 2
        self.bitmap.append([4, 0, 0, 0, 0, 0, 0, 0])  # row 3
        self.bitmap.append([5, 0, 0, 0, 0, 0, 0, 0xff])  # row 4

    def shift_out(self, bits):
        for i in range(8):
            value = bits & (1 << i)  # Is bit set or cleared?
            if value:  #bits & self.bit_values[i] > 0:
                self.data.on()
            else:
                self.data.off()
            self.clock.on()  # pulsing clock HIGH then LOW to shift data
            self.clock.off()

    def refresh(self, timer):
        #new_row = self.previous_row + 1 if (self.previous_row + 1) < self.row_max else 0
        new_row = self.previous_row + 1
        if new_row >= self.row_max:
            new_row = 0

        # == (1) Keep LEDs as it was ==
        # Don't show changes on the output lines while we shift bits for all 8 columns of this row
        self.latch.off()

        # == (2) Setup all the columns for new row ==
        # Shift out 8 digits x 8 bits = 64 bits)
        for c in range(self.col_max):
            segment_bits = self.bitmap[new_row][c]
            self.shift_out(segment_bits)

        # == (3) Flip it ==
        self.row_pins[self.previous_row].off()  # Turn off current row
        self.latch.on()  # Latch newly shifted data onto output lines
        self.row_pins[new_row].on()  # Turn on new row

        self.previous_row = new_row  # This will be the new column, next time round.

    def main(self):
        flash = Timer(0)
        flash.init(freq=1 * self.row_max, mode=Timer.PERIODIC, callback=self.refresh)

        while True:
            for i in range(64):
                time.sleep(1)

instance = ShiftRegisterSpeedTest_esp32()
instance.main()
