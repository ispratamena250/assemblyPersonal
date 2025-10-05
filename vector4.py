size = 7
xs = [0]*size

x = int(input("First integer: "))
xs[0] = x

print("{", end="")

for i in range(1, size):
        x += 1
        xs[i] = x

for e in xs:
    print(e, end=", ")

print("}")
