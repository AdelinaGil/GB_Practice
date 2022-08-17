# 1) 1.Напишите программу, которая принимает на вход цифру,
# обозначающую день недели, и проверяет, является ли этот день выходным.


while True:
    day = int(input('Введите цифру, обозначающую день недели: '))
    if day == 7:
        print('7 -> да, выходной')
        break
    elif day == 6:
        print('6 -> да, выходной')
        break
    elif 1 <= day < 6:
        print(f'{day} -> нет, не выходной')
        break
    else:
        print('Такого дня недели не существует. Введите цифру заново')
print('--------------------')

# 2) 1. Напишите программу для проверки истинности
# утверждения ¬(X ⋁ Y ⋁ Z) = ¬X ⋀ ¬Y ⋀ ¬Z для всех значений предикат.

import random
x = random.choice([True, False])
y = random.choice([True, False])
z = random.choice([True, False])

if (not(x or y or z)) == (not(x) and not(y) and not(z)):
    print('Верно')
print('--------------------')


# 3) 2.Напишите программу, которая принимает на вход
# координаты точки (X и Y), причём X ≠ 0 и Y ≠ 0 и
# выдаёт номер четверти плоскости, в которой находится эта точка (или на какой оси она находится).

x = float(input('Введите координаты точки по оси X отличные от 0: '))
y = float(input('Введите координаты точки по оси Y отличные от 0: '))
if x > 0 and y > 0:
    print(f'X = {x}; Y = {y}. Точка находится в I четверти плоскости')
elif x < 0 and y > 0:
    print(f'X = {x}; Y = {y}. Точка находится во II четверти плоскости')
elif x < 0 and y < 0:
    print(f'X = {x}; Y = {y}. Точка находится в III четверти плоскости')
else:
    print(f'X = {x}; Y = {y}. Точка находится в IV четверти плоскости')
print('--------------------')


# 4) 1.Напишите программу, которая по заданному номеру четверти,
# показывает диапазон возможных координат точек в этой четверти (x и y).

while True:
    quarter = int(input('Введите номер четверти: '))
    if quarter == 1:
        print('x = 0,+∞) y = (0,+∞)')
        break
    elif quarter == 2:
        print('x = (-∞,0) y = (0,+∞)')
        break
    elif quarter == 3:
        print('x = (-∞,0); y = (-∞,0)')
        break
    elif quarter == 4:
        print('x = 0,+∞); y = (-∞,0)')
        break
    else:
        print('Неверное значение')
print('--------------------')


# 5) 2.Напишите программу, которая принимает на вход
# координаты двух точек и находит расстояние между ними в 2D пространстве.

x1 = float(input('Введите координаты точки A по оси X: '))
y1 = float(input('Введите координаты точки A по оси Y: '))
x2 = float(input('Введите координаты точки B по оси X: '))
y2 = float(input('Введите координаты точки B по оси Y: '))
#d = √ (х А – х В) 2 + (у А – у В) 2)
d = round((((x1 - x2) ** 2) + ((y1 -y2) ** 2)) ** (1 / 2), 3)
print(d)
print('--------------------')
