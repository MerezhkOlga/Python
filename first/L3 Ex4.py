def my_func(x, y):
    try:
        x = float(x)
        y = int(y)
    except ValueError:
        print('Ошибка! введены неверные данные.')
        return
    if x < 0 or y >= 0:
        print('Ошибка! введены неверные данные.')
        return
    else:
        # Вариант 1
        # return x ** y

        # Вариант 2
        result = 1
        for qwe in range(abs(y)):
            result = result/x
        return result


print(my_func(input('Введите первое число: '), input('Введите второе число: ')))
