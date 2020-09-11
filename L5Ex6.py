def str_to_int(arg):
    otvet = '0'
    for znak in arg:
        otvet = otvet + znak if znak.isdigit() else otvet
    return int(otvet)


with open('L5Ex6.txt') as subjects:
    subj_line = 'qwe'
    dict_subj = {}
    while subj_line != '':
        subj_line = subjects.readline()
        if subj_line == '':
            break
        subj_list = subj_line.split()
        sum_s = 0
        for el in subj_list:
            sum_s += str_to_int(el)
        subj = subj_list[0]
        new_el = {subj: sum_s}
        dict_subj.update(new_el)
    print(dict_subj)
