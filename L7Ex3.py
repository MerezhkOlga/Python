class Nucleus:
    def __init__(self, cell):
        self.cell = cell

    def __add__(self, other):
        return Nucleus(self.cell + other.cell)

    def __sub__(self, other):
        if self.cell > other.cell:
            return Nucleus(self.cell - other.cell)
        else:
            print('Вычитание невозможно!')
            return

    def __mul__(self, other):
        return Nucleus(self.cell * other.cell)

    def __truediv__(self, other):
        return Nucleus(round(self.cell / other.cell))

    def make_order(self, lines):
        otvet = ''
        for _ in range(self.cell//lines):
            for _ in range(lines):
                otvet += '*'
            otvet += '\n'
        for _ in range(self.cell % lines):
            otvet += '*'
        return otvet


nucleus_1 = Nucleus(14)
nucleus_2 = Nucleus(6)

nucleus_3 = nucleus_1 + nucleus_2
print(nucleus_3.cell)

nucleus_4 = nucleus_1 - nucleus_2
print(nucleus_4.cell)

nucleus_5 = nucleus_1 * nucleus_2
print(nucleus_5.cell)

nucleus_6 = nucleus_1 / nucleus_2
print(nucleus_6.cell)

print(nucleus_1.make_order(4))
