
x1 = float(input('Введите координаты точки A по оси X: '))
y1 = float(input('Введите координаты точки A по оси Y: '))
x2 = float(input('Введите координаты точки B по оси X: '))
y2 = float(input('Введите координаты точки B по оси Y: '))
#d = √ (х А – х В) 2 + (у А – у В) 2)
d = round((((x1 - x2) ** 2) + ((y1 -y2) ** 2)) ** (1 / 2), 3)
print(d)
