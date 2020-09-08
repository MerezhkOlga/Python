"""" Я не уверена, что правильно поняла, что от меня хотят в задании... Сделала, как поняла..."""
from math import factorial


def gener(n):
    for el in range(1, n+1):
        yield el


n = int(input('Введите, до какого чисчла нужны факториалы: '))
for f in gener(n):
    print(factorial(f))
