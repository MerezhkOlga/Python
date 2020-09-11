with open('my_file.txt') as my_f:
    all_lines = my_f.readlines()
    amount_lines = len(all_lines)
    print(f'Всего в файле {amount_lines} строк')
    for num, val in enumerate(all_lines, 1):
        print(f'В {num} строке {len(val.split())} слов')
