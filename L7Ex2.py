from abc import ABC, abstractmethod


class Clothes(ABC):
    def __init__(self, size):
        self.size = size

    @abstractmethod
    def textile(self):
        pass


class Coat(Clothes):
    @property
    def textile(self):
        return self.size/6.5 + 0.5


class Suit(Clothes):
    @property
    def textile(self):
        return 2 * self.size + 0.3


c_1 = Coat(13)
print(c_1.textile)

s_1 = Suit(3)
print(s_1.textile)
