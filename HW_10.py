# 1. Провести дисперсионный анализ для определения того,
# есть ли различия среднего роста среди взрослых футболистов, хоккеистов и штангистов.
# Даны значения роста в трех группах случайно выбранных спортсменов:
# Футболисты: 173, 175, 180, 178, 177, 185, 183, 182.
# Хоккеисты: 177, 179, 180, 188, 177, 172, 171, 184, 180.
# Штангисты: 172, 173, 169, 177, 166, 180, 178, 177, 172, 166, 170.

import numpy as np
import pandas as pd
from scipy import stats

football = np.array([173, 175, 180, 178, 177, 185, 183, 182])
hockey = np.array([177, 179, 180, 188, 177, 172, 171, 184, 180])
weightlifting = np.array([172, 173, 169, 177, 166, 180, 178, 177, 172, 166, 170])

print(f'Задание 1.\n'
      f'Анализ-  {stats.f_oneway(football, hockey, weightlifting)}'
      f'Полученное значение p-value на уровне статистической значимости 0,05,  отвергаем нулевую гипотезу. '
      f'Т.е. средний рост футболистов, хоккеистов и штангистоа различен.')






