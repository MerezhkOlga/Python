super_list = [8, 6, 4, 2]
new_el = int(input('Введите новое целочисленное значение: '))
for el in super_list:
    if new_el >= el:
        pos = super_list.index(el)
        super_list.insert(pos, new_el)
        break
    else:
        super_list.append(new_el)
        break
print(super_list)
