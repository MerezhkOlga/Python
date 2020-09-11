with open('L5Ex5.txt', 'w+') as my_f:
    my_f.write(input('Введите числа через пробелы: '))

with open('L5Ex5.txt') as my_f:
    in_file = my_f.read().split()
    sum_num = 0
    for el in in_file:
        sum_num += int(el)
    print(sum_num)

""""Мне кажется, что если закомментировать 4ую строку (сначала ее не было, я потом дописала) все должно работать, 
но нет, без 4ой строки получается странное.. Почему так происходит?"""