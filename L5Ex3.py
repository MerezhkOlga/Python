with open('L5Ex3.txt') as my_f:
    line = 'qwe'
    sum_zp = 0
    people = 0
    print('В нищете живут следующие сотрудники: ')
    while line != '':
        line = my_f.readline()
        if line == '':
            break
        str_list = line.split()
        zp = int(str_list[1])
        sum_zp += zp
        if zp < 20000:
            print(str_list[0])
        people += 1
    print('Средняя зарплата: ', sum_zp/people)
