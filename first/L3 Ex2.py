def personal_data(name, surname, birth, city, email, telephone):
    data_list = ' '.join([name, surname, birth, city, email, telephone])
    return data_list


print(personal_data(name=input('Введите имя '), surname=input('Введите фамилию '), birth=input('Введите год рождения '),
                    city=input('Введите город рождения '), email=input('Введите email '),
                    telephone=input('Введите телефон ')))
