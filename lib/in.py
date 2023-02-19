import math

x = float(input())
cfrac = (math.pow(x, 6) + 5 * math.pow(x, 4) + 6 * math.pow(x, 2) + 1) / (math.pow(x, 5) + 4 * math.pow(x, 3) + 3 * x)
print(f"{cfrac:.2f}")
