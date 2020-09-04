def my_func(ar1, ar2, ar3):
    my_list = [float(ar1), float(ar2), float(ar3)]
    my_list.remove(min(my_list))
    return sum(my_list)


print(my_func(-1, 8, -1111))
