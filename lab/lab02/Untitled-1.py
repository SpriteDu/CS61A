def sum_digits(y):
    """Return the sum of the digits of non-negative integer y."""
    total = 0
    while y > 0:
        total, y = total + y % 10, y // 10
    return total

f = lambda n, i: sum_digits(n * i) == 5

print(f(10,1:10))