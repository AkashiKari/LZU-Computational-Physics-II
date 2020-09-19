import numpy as np


def f_2order(h):
    x = 1
    fm = np.sin(x - h)
    f0 = np.sin(x)
    f1 = np.sin(x + h)

    diff_1_3_c = (f1 - fm) / (2 * h)
    diff_1_2_f = (f1 - f0) / (h)
    diff_1_2_b = (f0 - fm) / (h)
    diff_2_3_c = (f1 - 2 * f0 + fm) / (h ** 2)

    diff_1 = np.cos(x)
    diff_2 = -np.sin(x)

    err1 = diff_1_3_c - diff_1
    err2 = diff_1_2_f - diff_1
    err3 = diff_1_2_b - diff_1
    err4 = diff_2_3_c - diff_2

    return [
        [diff_1_3_c, err1], [diff_1_2_f, err2], [
            diff_1_2_b, err3], [diff_2_3_c, err4]
    ]


h1 = 1e-2
print(f"h = {h1}:\n{f_2order(h1)}")

h2 = 1e-3
print(f"h = {h2}:\n{f_2order(h2)}")

h3 = 1e-4
print(f"h = {h3}:\n{f_2order(h3)}")

h4 = 1e-5
print(f"h = {h4}:\n{f_2order(h4)}")

h5 = 1e-6
print(f"h = {h5}:\n{f_2order(h5)}")
