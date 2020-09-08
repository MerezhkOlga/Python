old_list = [300, 2, 12, 44, 1, 1, 4, 10, 7, 1, 78, 123, 55]
new_list = [el for el in old_list if el > old_list[old_list.index(el)-1] and old_list.index(el) != 0]
print(new_list)
