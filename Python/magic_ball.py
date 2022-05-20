import random
from time import *

# Формируем список с ответами
answers = ['Definitely', 'Determined', 'No doubt', 'Definitely yes', 'You can be sure of it',
           'I think yes', 'Most likely', 'Good prospects', 'Signs say yes', 'yes',
           'Unclear yet, try again', 'Ask later', 'Better not tell', 'Now you can`t predict',
           'Concentrate and ask again', 'Don`t even think', 'My answer is no', 'According to my data, no',
           'Prospects are not very good', 'Very doubtful']


print('Hi World! I`m magic ball and I know the answer to your question.')
name = input('What is your name? ')
print(f'Hi, {name}')

# Создаем цикл для генерации ответов
while True:
    ball = input('Ask me a question ')
    sleep(0.3)
    print(random.choice(answers))
    sleep(0.3)
    q_again = input('Would you like to aks me more? ').lower()
    sleep(0.3)
    if q_again == 'yes':
        continue
    else:
        print('Come back if you have any questions')
        break
