def func_sum(summ, line):
    list = line.split()
    for el in list:
        summ += int(el)
    return summ


sum_user = 0
line_user = '1'
while line_user[-1].isdigit():
    line_user = input('Введите числа через пробелы. Если хотите завершить, введите любой символ: ')
    try:
        sum_user = func_sum(sum_user, line_user)
        print('Сумма на данный момент: ', sum_user)
    except ValueError:
        while line_user[-1].isalpha():
            line_user = line_user[0:-1]
        sum_user = func_sum(sum_user, line_user)
        print('Итоговая сумма: ', sum_user)
        line_user = 'qwe'
