a = float(input('Введите ваш текущий результат в км: '))
b = float(input('Введите ваш желаемый результат в км: '))
day = 1
while b > a:
    a = a*1.1
    day += 1
print(f'Вы достигните результата не менее {b} км за {day} дней.')