num = -1
while num <= 0:
    num = int(input('Введите целое положительное число: '))
maxi = num % 10
while (num // 10) > 0:
    num = (num // 10)
    maxi_2 = (num % 10)
    if maxi_2 > maxi:
        maxi = maxi_2
print('Самая большая цифра в числе: ', maxi)