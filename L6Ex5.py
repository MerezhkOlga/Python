class Stationery:
    def __init__(self, title):
        self.title = title
        # print(self.title)

    def draw(self):
        print('Запуск отрисовки.')


class Pen(Stationery):
    def draw(self):
        print('Запуск отрисовки ручкой.')


class Pencil(Stationery):
    def draw(self):
        print('Запуск отрисовки карандашом.')


class Handle(Stationery):
    def draw(self):
        print('Запуск отрисовки маркером.')


my_stationery_1 = Pen('Синяя ручка')
my_stationery_1.draw()

my_stationery_2 = Pencil('Простой карандаш')
my_stationery_2.draw()

my_stationery_3 = Handle('Черный маркер')
my_stationery_3.draw()
