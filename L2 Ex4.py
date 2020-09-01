list_user = input('Введите слова через пробелы: ').split()
num = 1
for word in list_user:
    print(num, word[0:10])
    num += 1
