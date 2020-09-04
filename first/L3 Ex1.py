def division(num1, num2):
    answer = num1 / num2 if num2 != 0 else print('Ошибка! Деление на 0.')
    return answer


print(division(float(input('Введите первое число: ')), float(input('Введите второе число: '))))
