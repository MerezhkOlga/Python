class Car:
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police

    def go(self):
        print('Машина поехала')

    def stop(self):
        print('Машина остановилась')

    def tern(self, direction):
        print('Машина повернула на', direction)

    def show_speed(self):
        print('Скорость машины: ', self.speed)


class TownCar(Car):
    def show_speed(self):
        super().show_speed()
        if self.speed > 60:
            print('Превышение скорости!')


class SportCar(Car):
    pass


class WorkCar(Car):
    def show_speed(self):
        super().show_speed()
        if self.speed > 40:
            print('Превышение скорости!')


class PoliceCar(Car):
    pass


my_car_1 = TownCar(speed=70, color='red', name='BMW', is_police=False)
my_car_1.show_speed()

my_car_2 = SportCar(speed=180, color='blue', name='Lamborghini', is_police=False)
my_car_2.go()

my_car_3 = WorkCar(speed=50, color='brown', name='Volvo', is_police=False)
my_car_3.show_speed()
my_car_3.stop()

my_car_4 = PoliceCar(speed=120, color='black', name='Lada', is_police=True)
my_car_4.go()
my_car_4.tern('лево')
