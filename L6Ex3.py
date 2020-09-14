class Worker:
    def __init__(self, name, surname, position, wage, bonus):
        self.name = name
        self.surname = surname
        self.position = position
        self._income = {"wage": wage, "bonus": bonus}


class Position(Worker):
    def get_full_name(self):
        print('Полное имя сотрудника: ', self.name, self.surname)

    def get_total_income(self):
        print('Зарплата в месяц: ', self._income.get("wage") + self._income.get("bonus"))


# me = Position()
me = Position(name='Olga', surname='Merezhko', position='Boss', wage=200000, bonus=50000)
me.get_full_name()
me.get_total_income()
