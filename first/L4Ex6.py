from itertools import count, cycle

# Первый итератор
for el in count(start=21):
    print(el)
    if el == 30:
        break

# Второй итератор
import time
any_list = ['казнить', 'нельзя', 'помиловать']
t_begin = time.time()
for word in cycle(any_list):
    print(word)
    t_end = time.time()
    if (t_end - t_begin) >= 0.0002:
        break
