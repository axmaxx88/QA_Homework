import random   # подключаем модуль random
from time import *  # подключаем модуль time

num = random.randint(1, 100)    # генерируем случайное число от 1 до 100
print('Welcome to Number Guesser Game"')
sleep(1)
name = input('What is your name? ')


def is_valid(user_number):    # проверяем корректность введенных данных
    return user_num.isdigit() and 1 <= int(user_num) <= 100


count = 0   # запускаем счетчик колличества попыток
while True:     # запускаем цикл игры
    user_num = input(f'{name}, enter a number from 1 to 100 ')
    if not is_valid(user_num):
        print('You have to enter an integer between 1 and 100! ')
        sleep(1)
        continue
    else:
        user_num = int(user_num)
        sleep(1)
        if user_num > num:
            count += 1
            print('Too many, try again')
        elif user_num < num:
            count += 1
            print('Too small, try again')
        else:
            count += 1
            print('WOW! You are a psychic! That`s right!')
            sleep(1.5)
            print(f'You guessed the number on the {count} try')
            sleep(2)
            print(f'{name}, Do you want to play again?')
            sleep(0.5)
            if input().lower() == 'yes':
                sleep(1)
                print('')
                continue
            else:
                sleep(0.5)
                print('OK')
                sleep(0.5)
                print(f'{name}, if you change your mind I`m ready to play again!')
                break
