import turtle as t
import curses
import random
import sys
import os
import time

class ArtisticTurtle:
    def __init__(self):
        self.turtle = t.Turtle()
        self.path_length = 0

    def operator(self, i: int, type_: str):
        if type_ == "displacement":
            operator_displacement = random.randint(0, 1)
            if operator_displacement == 0:
                self.turtle.forward(i); self.path_length += i
            elif operator_displacement == 1:
                self.turtle.backward(i); self.path_length += i
        elif type_ == "angular":
            operator_angular = random.uniform(0, 90)
            operator_directional = random.randint(0, 1)
            if operator_directional == 0:
                self.turtle.right(operator_angular); self.path_length += i
            elif operator_directional == 1:
                self.turtle.left(operator_angular); self.path_length += i

    def get_positions(self):
        return (self.path_length, t.pos() )

    def test(self, n):
        m = 1
        while m < n:
            print(self.get_positions())
            self.operator(m, "angular")
            self.operator(m, "displacement")
            m += 1

    def clear_screen(self):
        os.system('clear')
        self.turtle.reset()
        animation = "|/-\\"
        for i in range(20):
            sys.stdout.write("\r" + "Loading... " + animation[i % len(animation)])
            time.sleep(0.1)
            sys.stdout.flush()

    def draw_geometry(self, m):
        self.turtle.speed(0)

        for i in range(m):
            self.turtle.pencolor(random.random(), random.random(), random.random())
            self.turtle.width(random.uniform(1, 10))
            self.operator(i, "displacement")
            self.operator(i, "angular")
        self.clear_screen()        

def main():
    print('Start? (y): ',end='')
    while True:
        art_turtle = ArtisticTurtle()
        art_turtle.draw_geometry(random.randint(50,100))
if __name__ == "__main__":
    main()

