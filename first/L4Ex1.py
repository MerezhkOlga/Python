import sys
# print(sys.argv)
name, virob, premia = sys.argv
stavka = 1500
zarplata = (stavka * int(virob)) + int(premia)
print(f'Зарплата данного сотрудника: {zarplata} рублей.')
