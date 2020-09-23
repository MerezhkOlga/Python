import random


class LotoCard:
    def __init__(self, name):
        self.name = name
        self.nums_in_card = []
        self.__all_nums_in_card = []
        while len(self.__all_nums_in_card) < 15:
            new_el = random.randint(1, 90)
            if new_el in self.__all_nums_in_card:
                continue
            else:
                self.__all_nums_in_card.append(new_el)
        line_1 = self.__all_nums_in_card[0: 5]
        line_2 = self.__all_nums_in_card[5: 10]
        line_3 = self.__all_nums_in_card[10: 15]
        line_1.sort()
        line_2.sort()
        line_3.sort()
        self.nums_in_card = [line_1, line_2, line_3]
        for line in self.nums_in_card:
            for _ in range(4):
                line.insert(random.randint(0, len(line)), ' ')

    def __str__(self):
        self.__break = '-' * 22
        lines = '\n'.join(' '.join(map(str, line)) for line in self.nums_in_card)
        return self.name + '\n' + self.__break + '\n' + lines + '\n' + self.__break

    def pobeda(self):
        for line in self.nums_in_card:
            for el in line:
                if str(el).isdigit():
                    return False
        return True

    def proverka(self, boch):
        for line in self.nums_in_card:
            for el in line:
                if el == boch:
                    index_boch = line.index(el)
                    line.insert(index_boch, '*')
                    line.pop(index_boch + 1)
                    return True
        return False


card_player = LotoCard(input('Введите ваше имя: '))
card_computer = LotoCard('Компьютер')
all_boch = [el for el in range(1, 91)]
while card_computer.pobeda() is False and card_player.pobeda() is False:
    print(card_computer)
    print(card_player)
    this_boch = all_boch[random.randint(0, len(all_boch) - 1)]
    all_boch.remove(this_boch)
    print(f'Новый бочонок: {this_boch} (осталось {len(all_boch)})')
    otvet = input('Зачеркнуть цифру? (y/n) ')
    if otvet == 'y':
        if card_player.proverka(this_boch) is False:
            print('Вы проиграли!')
            break
        else:
            card_player.proverka(this_boch)
            card_computer.proverka(this_boch)
    elif otvet == 'n':
        if card_player.proverka(this_boch) is True:
            print('Вы проиграли!')
            break
        else:
            card_computer.proverka(this_boch)
    else:
        print('Вы проиграли!')
        break
print(card_computer)
print(card_player)
if card_computer.pobeda() is True and card_player.pobeda() is True:
    print('Ничья!')
elif card_computer.pobeda() is True:
    print('Победил компьютер!')
elif card_player.pobeda() is True:
    print('Победил ', card_player.name)
# else:
#     print('ХЗ, что вообще произошло...')
