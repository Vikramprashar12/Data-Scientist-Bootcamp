from statistics import *
import scipy;

x = [126, 105, 314, 132, 216]
y = [4.2, 6.8, 3.2, 5.6, 4.8, 5.1, 6.0, 5.2, 5.6, 4.3]

print(f'mean is {mean(y)}')
print(f'median is {median(y)}')
print(f'pstddev is {pstdev(y)}')
print(f'stddev is {stdev(y)}')
