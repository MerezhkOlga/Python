class Road:
    def __init__(self, length, width):
        self._width = width
        self._length = length

    def calculations(self):
        return self._width * self._length * 25 * 4


my_road = Road(int(input('Введите длинну ')), int(input('Введите ширину ')))
print('Понадобиться асфальта: ', my_road.calculations())
