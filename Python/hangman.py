import random

word_list = ['theater', 'school', 'cinema', 'computer', 'python', 'college'
             'television', 'window', 'plane', 'month', 'state', 'language', 'love',
             'look', 'mom', 'age', 'school', 'goal', 'society', 'activity',
             'organization', 'president' , 'room', 'order', 'moment', 'theater',
             'letter', 'morning', 'help', 'situation', 'role', 'ruble', 'meaning',
             'state', ' apartment', 'organ', 'attention', 'body', 'labor', 'son',
             'measure', 'death', 'market', 'program', 'task', 'enterprise', 'window',
             'talk', 'government', 'family', 'production', 'information', 'position',
             'center', 'answer', 'husband', 'author', 'wall', 'interest', ' federation',
             'rule', 'management', 'man', 'idea', 'party', 'council', 'account', 'heart',
             'movement', 'thing', 'material', 'week' , 'feeling', 'head', 'science', 'series',
             'newspaper', 'reason', 'shoulder', 'price', 'plan', 'speech', 'point', 'base',
             ' comrade', 'culture',]


def get_word():
    return random.choice(word_list)


def print_word(word_, list_):
    for c in word_:
        if c in list_:
            print(c, end=' ')
        else:
            print('_', end=' ')
    print()


def play(word):
    # тело функции
    word_completion = '_ ' * len(word)  # строка, содержащая символы _ на каждую букву задуманного слова
    guessed = False  # сигнальная метка
    guessed_letters = []  # список уже названных букв
    guessed_words = []  # список уже названных слов
    tries = 6  # количество попыток
    print('Lets play "Hangman"!')
    # print(word)
    print(display_hangman(tries))
    print(word_completion)
    while True:
        word_input = input('Input a letter or a word: ').upper()
        # print(word_input)
        if not word_input.isalpha():
            print('You made a mistake. Try again')
            continue
        if word_input in guessed_words or word_input in guessed_letters:
            print('Already been')
            continue
        if len(word_input) > 1:
            if word_input == word:
                print('Congratulations! You have guessed the word!')
                break
            else:
                guessed_words.append(word_input)
                tries -= 1
                print(f'Wrong. {tries} tries left')
                print(display_hangman(tries))
                print_word(word, guessed_letters)
                if tries == 0:
                    print(f"You couldn't guess the word: {word}")
                    break
                continue

        if word_input in word:
            guessed_letters.append(word_input)
            for c in word:
                if c not in guessed_letters:
                    print('Guess the letter')
                    print_word(word, guessed_letters)
                    guessed = False
                    break
                guessed = True
            if guessed:
                print_word(word, guessed_letters)
                print('Congratulation! We have guessed the word! You win!')
                break
        else:
            guessed_letters.append(word_input)
            tries -= 1
            print(f'Wrong, {tries} tries left')
            print(display_hangman(tries))
            print_word(word, guessed_letters)
        if tries == 0:
            print(f" You couldn't guess the word: {word}")
            break


# функция получения текущего состояния
def display_hangman(tries):
    stages = [  # финальное состояние: голова, торс, обе руки, обе ноги
        '''
           --------
           |      |
           |      O
           |     \\|/
           |      |
           |     / \\
           -
        ''',
        # голова, торс, обе руки, одна нога
        '''
           --------
           |      |
           |      O
           |     \\|/
           |      |
           |     / 
           -
        ''',
        # голова, торс, обе руки
        '''
           --------
           |      |
           |      O
           |     \\|/
           |      |
           |      
           -
        ''',
        # голова, торс и одна рука
        '''
           --------
           |      |
           |      O
           |     \\|
           |      |
           |     
           -
        ''',
        # голова и торс
        '''
           --------
           |      |
           |      O
           |      |
           |      |
           |     
           -
        ''',
        # голова
        '''
           --------
           |      |
           |      O
           |    
           |      
           |     
           -
        ''',
        # начальное состояние
        '''
           --------
           |      |
           |      
           |    
           |      
           |     
           -
        '''
    ]
    return stages[tries]


play(get_word().upper())
# print(get_word().upper())
# print(display_hangman(5))