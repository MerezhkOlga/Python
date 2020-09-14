from itertools import cycle
import time


class TrafficLight:
    def __init__(self):
        self.__color = ['Red', 'Yellow', 'Green']

    def running(self):
        for color in cycle(self.__color):
            if color == 'Red':
                print(color)
                time.sleep(7)
            elif color == 'Yellow':
                print(color)
                time.sleep(2)
            elif color == 'Green':
                print(color)
                time.sleep(12)


svetofor = TrafficLight()
svetofor.running()
