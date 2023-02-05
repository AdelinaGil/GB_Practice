# 1. Даны две независимые выборки. Не соблюдается условие нормальности
# x1 380,420, 290
# y1 140,360,200,900
# Сделайте вывод по результатам, полученным с помощью функции

import numpy as np
import scipy.stats as stats

x1 = np.array([380, 420, 290])
x2 = np.array([140,360,200,900])
print(f'Задача 1. \n'
      f'Результат: {stats.mannwhitneyu(x1,x2)},\n'
      f'Нулевая гипотеза подтверждена, выборки статистически равны\n')

# 2. Исследовалось влияние препарата на уровень давления пациентов. Сначала измерялось давление до приема препарата, потом через 10 минут и через 30 минут. Есть ли статистически значимые различия?
# 1е измерение до приема препарата: 150, 160, 165, 145, 155
# 2е измерение через 10 минут: 140, 155, 150, 130, 135
# 3е измерение через 30 минут: 130, 130, 120, 130, 125

y1= np.array([150, 160, 165, 145, 155])
y2= np.array([140, 155, 150, 130, 135])
y3= np.array([130, 130, 120, 130, 125])

print(f'Задача 2. \n'
      f'Результат: {stats.friedmanchisquare(y1, y2, y3)},\n'
      f'Нулевая гипотеза не подтверждена, выборки статистически неравны\n')

# 3. Сравните 1 и 2 е измерения,
# предполагая, что 3го измерения через 30 минут не было.

print(f'Задача 3. \n'
      f'Результат: {stats.wilcoxon(y1, y2)},\n'
      f'Нулевая гипотеза подтверждена, выборки статистически равны\n')

# 4. Даны 3 группы учеников плавания.
# В 1 группе время на дистанцию 50 м составляют:
# 56, 60, 62, 55, 71, 67, 59, 58, 64, 67
# Вторая группа : 57, 58, 69, 48, 72, 70, 68, 71, 50, 53
# Третья группа: 57, 67, 49, 48, 47, 55, 66, 51, 54

gr_1 = np.array([56, 60, 62, 55, 71, 67, 59, 58, 64, 67])
gr_2 = np.array([57, 58, 69, 48, 72, 70, 68, 71, 50, 53])
gr_3 = np.array([57, 67, 49, 48, 47, 55, 66, 51, 54])

print(f'Задача 4. \n'
      f'Результат: {stats.kruskal(gr_1, gr_2, gr_3)},\n'
      f'Нулевая гипотеза подтверждена, выборки статистически равны\n')











