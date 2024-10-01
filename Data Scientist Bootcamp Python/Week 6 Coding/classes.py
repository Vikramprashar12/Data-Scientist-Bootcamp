import time
class sample:
    data_a = 20
    data_b = 30

    def display(self):
        print('value of data_a =', self.data_a)
        print('value of data_b =', self.data_b)


objx = sample()
objy = sample()

objx.display()
objy.display()


class bank:
    def __init__(self, x, y, z):
        self.account_number = x
        self.initial_deposit = y
        self.account_balance = y
        self.name = z
        print(f"Thank you for creating an account with us, {self.name}")

    def withdraw(self, amt):
        if self.account_balance >= amt:
            self.account_balance -= amt
            print(f"Your account has been debited with {amt} dollars")
            print(
                f"Your new account balance is {self.account_balance} dollars")
        else:
            print("You do not have enough balance")

    def deposit(self, amt):
        self.account_balance += amt
        print(f"Your account has been credited with {amt} dollars")
        print(f"Your new account balance is {self.account_balance} dollars")

    def check_balance(self):
        print("Welcome ", self.name)
        print(f'Your account balance is {self.account_balance} dollars')


class unix:
    def cmd(self):
        print("great command line")

    def secure(self):
        print("concept of rwx makes it very secure")


class linux(unix):
    def free(self):
        print("open source & free")
