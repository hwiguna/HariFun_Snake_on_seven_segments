from machine import ADC, Pin
import time


class ButtonTest01:
    def __init__(self):
        # === BUTTONS ===
        self.adc = ADC(0)  # create ADC object on ADC pin
        self.last_value = 0
        self.direction = 0
        self.main()

    def read_button(self):
        new_value = self.adc.read()
        if abs(new_value - self.last_value) > 5:

            if new_value < 10:
                self.direction = 1
            else:
                if new_value < 400:
                    self.direction = 0
                else:
                    if new_value < 600:
                        self.direction = 2
                    else:
                        if new_value < 800:
                            self.direction = 3
                        else:
                            self.direction = -1
            if self.direction != -1:
                print("new value=", new_value, " new Direction=", self.direction)
            self.last_value = new_value
            time.sleep(.1)
        return self.direction

    def main(self):
        last_d = -1
        while True:
            self.read_button()


ButtonTest01()
