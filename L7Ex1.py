class Matrix:
    def __init__(self, this_list):
        self.list = this_list

    def __str__(self):
        return '\n'.join(map(str, self.list))

    def __add__(self, other):
        new_m = []
        for l1, l2 in zip(self.list, other.list):
            new_l = []
            for e1, e2 in zip(l1, l2):
                x = e1 + e2
                new_l.append(x)
            new_m.append(new_l)
        return Matrix(new_m)


matr_1 = Matrix([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
matr_2 = Matrix([[4, 2, 1], [1, 6, 3], [2, 2, 1]])
print(matr_1)
print()
print(matr_2)
matr_3 = matr_1 + matr_2
print()
print(matr_3)