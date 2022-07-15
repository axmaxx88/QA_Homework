import random

# Функция генерации пароля


def generate_password(length, chars1):
    password = random.sample(chars1, length)
    return password


# Необходимые данные для пароля
digits = '0123456789'
lowercase_letters = 'abcdefghijklmnopqrstuvwxyz'
uppercase_letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
punctuation = '!#$%&*+-=?@^_.'
chars = ''

# Считываем пользовательские данные
num_pass = int(input('Enter number of passwords you need to generate: '))
len_pass = int(input('Enter password length: '))
digit_include = input('Include digits? (yes/no) ')
upper_let = input('Include upper case letters? (yes/no) ')
lower_let = input('Include lower case letters? (yes/no) ')
symbols = input('Include symbols? (yes/no) ')
amb_symbols = input('Exclude ambiguous symbols? (yes/no) ')

# Настройка генерации пароля
if digit_include.lower() == 'yes':
    chars += digits
if upper_let.lower() == 'yes':
    chars += uppercase_letters
if lower_let.lower() == 'yes':
    chars += lowercase_letters
if symbols.lower() == 'yes':
    chars += punctuation
if amb_symbols.lower() == 'yes':
    for c in 'il1Lo0O':
        chars.replace(c, '')

# Генерируем необходимое количество паролей
print("Here we go! Your passwords:")
for _ in range(num_pass):
    print(''.join(generate_password(len_pass, chars)))
