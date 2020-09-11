with open('my_file.txt', 'x') as my_f:
    text_line = ''
    new_el = 'qwe'
    while new_el != '':
        new_el = input('Введите данные или нажмите enter на пустой строке для выхода: ')
        if new_el == '':
            text_line = text_line[0:-2]
            break
        text_line = text_line + new_el + '\n'
    my_f.write(text_line)
