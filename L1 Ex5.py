vir = int(input('Введите выручку: '))
izd = int(input('Введите издержки: '))
if vir < izd:
    print('К сожаленю, вы в минусе.')
elif vir == izd:
    print('Вам удалось выйти в ноль! ')
else:
    print('Поздравляем! Вы вышли в плюс! Ваша рентабельность: ', (vir-izd)/vir)
    sotr = int(input('Введите количество сотрудников: '))
    print('Прибыль на одного сотружника составляет: ', (vir-izd)/sotr)