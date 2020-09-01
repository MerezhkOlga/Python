my_list = []
new_el = 'Что-то'
while new_el != 'СТОП':
    new_el = input('Введите новый элемент списка или напишите СТОП ')
    if new_el == 'СТОП':
        break
    my_list.append(new_el)
print(my_list)
ind = 0
while ind < len(my_list)-1:
    reserve = my_list[ind]
    my_list[ind] = my_list[ind+1]
    my_list[ind+1] = reserve
    ind += 2
print(my_list)
