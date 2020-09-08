from functools import reduce


def multiplication(num_1, num_2):
    return num_1 * num_2


my_list = [el for el in range(100, 1001) if el % 2 == 0]
print(my_list)
print(reduce(multiplication, my_list))
