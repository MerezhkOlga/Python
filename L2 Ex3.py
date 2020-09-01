num = 0
while num < 1 or num > 12:
    try:
        num = int(input('Введите номер месяца: '))
    except ValueError:
        print('Ошибка! Введено не целое число.')

# Способ 1. Список.
winter = [1, 2, 12]
spring = [3, 4, 5]
summer = [6, 7, 8]
# autumn = [9, 10, 11]
if num in winter:
    print('Это зима.')
elif num in spring:
    print('Это весна.')
elif num in summer:
    print('Это лето.')
else:
    print('Это осень')

# Способ 2. Словарь.
year = {1: 'зима.', 2: 'зима.', 3: 'весна.', 4: 'весна.', 5: 'весна.', 6: 'лето.', 7: 'лето.', 8: 'лето.',
        9: 'осень.', 10: 'осень.', 11: 'осень.', 12: 'зима.'}
print('Это', year.get(num))
