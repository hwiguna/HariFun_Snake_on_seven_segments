from machine import Pin, Timer
import time


class ShiftRegisterSpeedTest:
    def __init__(self):
        # === Shift Register ===
        self.clock = Pin(5, Pin.OUT)
        self.data = Pin(4, Pin.OUT)
        self.latch = Pin(2, Pin.OUT)
        self.row_max = 5  # Five rows of transistor drivers
        self.col_max = 8  # Eight columns of shift registers
        self.bitmap = []
        self.bit_values = [1,2,4,8,16,32,64,128]

        # === Column Transistors ===
        self.previous_row = 0
        self.row_pins = [Pin(0, Pin.OUT),
                         Pin(15, Pin.OUT),
                         Pin(13, Pin.OUT),
                         Pin(12, Pin.OUT),
                         Pin(14, Pin.OUT)]

        self.bitmap.append([1, 0, 0, 0, 0, 0, 0, 0])  # row 0
        self.bitmap.append([2, 0, 0, 0, 0, 0, 0, 0])  # row 1
        self.bitmap.append([3, 0, 0, 0, 0, 0, 0, 0])  # row 2
        self.bitmap.append([4, 0, 0, 0, 0, 0, 0, 0])  # row 3
        self.bitmap.append([5, 0, 0, 0, 0, 0, 0, 0xff])  # row 4

    @micropython.native
    def shift_out(self, bits):
        for i in range(8):
            #value = bits & (1 << i)  # Is bit set or cleared?
            if bits & self.bit_values[i] > 0:
                self.data.on()
            else:
                self.data.off()
            self.clock.on()  # pulsing clock HIGH then LOW to shift data
            self.clock.off()

    # def shift_out(self, bits):
    #     for i in range(8):
    #         value = bits & (1 << i)  # Is bit set or cleared?
    #         self.data.value(1 if value > 0 else 0)
    #         self.clock.on()  # pulsing clock HIGH then LOW to shift data
    #         self.clock.off()

    @micropython.native
    def refresh(self, timer):
        #new_row = self.previous_row + 1 if (self.previous_row + 1) < self.row_max else 0
        new_row = self.previous_row + 1
        if new_row >= self.row_max:
            new_row = 0

        # == Shift out all the columns for new row (8 digits x 8 bits = 64 bits) ==
        self.latch.off()  # Don't show changes to the bits on the output lines
        for c in range(self.col_max):
            segment_bits = self.bitmap[new_row][c]
            self.shift_out(segment_bits)

        # == Flip it ==
        # Turn off current row
        self.row_pins[self.previous_row].off()

        # Latch data for new row
        self.latch.on()  # Show data on output lines

        # Turn on new row
        self.row_pins[new_row].on()
        self.previous_row = new_row  # This will be the new column, next time round.

    def main(self):
        flash = Timer(0)
        flash.init(freq=1 * self.row_max * self.col_max, mode=Timer.PERIODIC, callback=self.refresh)

        while True:
            for i in range(64):
                time.sleep(1)

instance = ShiftRegisterSpeedTest()
instance.main()
