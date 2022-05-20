#  You can experiment here, it won’t be checked

import random
from time import *


print('Игра "Числовая угадайка"')
name = input('Привет! Как тебя зовут? ')
num = random.randint(1, 100)

while True:
    user_num = int(input(f'{name}, введи число от 1 до 100 '))
    sleep(1)
    if user_num > num:
        print('Слишком много, давай еще разок')
    elif user_num < num:
        print('Слишком мало, давай еще разок')
    else:
        print('Огоо, ты экстрасенс! Правильно!')
        sleep(2)
        print(f'{name}, хочешь сиграть еще разок?')
        sleep(0.5)
        if input() == 'да':
            sleep(1)
            print('')
            continue
        else:
            sleep(0.5)
            print('хорошо')
            sleep(0.5)
            print(f'{name} но если передумаешь, я всегда готова сиграть еще разок')
            break
