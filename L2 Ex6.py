num_in_all = int(input('Сколько всего будет наименований? '))
num = 1
product_list = []
while num_in_all >= num:
    new_el = (num, {'Название ': input('Введите название'), 'Цена ': float(input('Введите цену')),
                    'Количество ': int(input('Введите количество')), 'Единицы ': input('Введите единицы')})
    product_list.append(new_el)
    num += 1

print('Ваша база данных:')
for el in product_list:
    print(el)

names = []
prises = []
quantity = []
units = []
analytics_dict = {'Название ': names, 'Цена ': prises, 'Количество ': quantity, 'Единицы': units}
for product in product_list:
    names.append(product[1].get('Название '))
    prises.append(product[1].get('Цена '))
    quantity.append(product[1].get('Количество '))
    units.append(product[1].get('Единицы '))

print('Анатитика: ')
print(analytics_dict)
