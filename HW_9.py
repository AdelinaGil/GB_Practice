# 1. Даны значения величины заработной платы заемщиков банка (zp)
# и значения их поведенческого кредитного скоринга (ks):
# zp = [35, 45, 190, 200, 40, 70, 54, 150, 120, 110],
# ks = [401, 574, 874, 919, 459, 739, 653, 902, 746, 832].
# Используя математические операции, посчитать коэффициенты линейной регрессии,
# приняв за X заработную плату (то есть, zp - признак),
# а за y - значения скорингового балла (то есть, ks - целевая переменная).
# Произвести расчет как с использованием intercept, так и без.
# Посчитать коэффициент линейной регрессии при заработной плате (zp),
# используя градиентный спуск (без intercept).

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

zp = np.array([35, 45, 190, 200, 40, 70, 54, 150, 120, 110])
ks = np.array([401, 574, 874, 919, 459, 739, 653, 902, 746, 832])

plt.scatter(zp,ks)
plt.xlabel('Величина заработной платы')
plt.ylabel('Поведенческий кредитный скоринг', rotation=90)
plt.show()

b = (np.mean(zp * ks) - np.mean(zp) * np.mean(ks)) / (np.mean(zp**2) - np.mean(zp) ** 2)
print(f'Задание 1.\n'
      f'Коэффициент b -  {b: .3f}')

a = np.mean(ks) - b * np.mean(zp)
print(f'Величина интерсепта a -  {a: .3f}')

plt.scatter(zp,ks)
plt.plot(zp, 444.18+2.62*zp, c='r', label=r'$ks=444.18+2.62\cdot zp$')
plt.legend()
plt.xlabel('Величина заработной платы')
plt.ylabel('Поведенческий кредитный скоринг', rotation=90)
plt.show()

def _mse(b, x, y):
    return np.sum((b * x - y) ** 2) / len(x)
_mse(b, zp, ks)
print(f'MSE -  {_mse(b, zp, ks): .3f}')

def _mse_p(b, x, y):
    return (2 / len(x)) * np.sum((b * x - y) * x)
alpha=1e-06
b=0.1
mse_min=_mse(b,zp,ks)
i_min=1
b_min=b
for i in range(10000):
    b-=alpha*_mse_p(b,zp,ks)
    if i%100==0:
        print(f'Итерация #{i}, b={b}, mse={_mse(b, zp,ks)}')
    if _mse(b,zp,ks)>mse_min:
        print(f'Итерация #{i_min}, b={b_min}, mse={mse_min},\nДостигнут минимум.')
        break
    else:
        mse_min=_mse(b,zp,ks)
        i_min=i
        b_min=b
print(f'Коэффициент b -  {b_min: .3f}')

def _mse_ab(a, b, x, y):
    return np.sum(((a + b * x) - y) ** 2) / len(x)

def _mse_pa(a, b, x, y):
    return 2 * np.sum((a + b * x) - y) / len(x)

def _mse_pb(a, b, x, y):
    return 2 * np.sum(((a + b * x) - y) * x) / len(x)

alpha=5e-05

b = 0.1
a = 0.1
mseab_min = _mse_ab(a, b, zp, ks)
i_min = 1
b_min = b
a_min = a

for i in range(1000000):
    a -= alpha * _mse_pa(a, b, zp, ks)
    b -= alpha * _mse_pb(a, b, zp, ks)
    if i % 50000 == 0:
        print(f'Итерация #{i}, a={a}, b={b}, mse={_mse_ab(a, b, zp, ks)}')
    if _mse_ab(a, b, zp, ks) > mseab_min:
        print(f'Итерация #{i_min}, a={a_min}, b={b_min}, mse={mseab_min},\nДостигнут минимум.')
        break
    else:
        mseab_min = _mse_ab(a, b, zp, ks)
        i_min = i
        b_min = b
        a_min = a
print(f'a={a_min}\nb={b_min}')

plt.scatter(zp,ks)
plt.plot(zp,a_min+b_min*zp, c='r', label=r'$ks=444.17653163778414+2.62054495966686\cdot zp$')
plt.legend()
plt.xlabel('Величина заработной платы')
plt.ylabel('Поведенческий кредитный скоринг', rotation=90)
plt.show()




