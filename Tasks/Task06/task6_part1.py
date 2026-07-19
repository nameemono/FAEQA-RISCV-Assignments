# Task 6 - Part 1
# Basic Python examples for cocotb prerequisites

# Variables
a = 10
b = 20

print("Addition:", a + b)
print("Bitwise AND:", a & b)
print("Left Shift:", a << 2)

# Lists
numbers = [10, 20, 30]
numbers.append(40)
print("List:", numbers)

# Tuples
case = (5, 6, 11)
x, y, expected = case
print("Tuple:", x, y, expected)

# Dictionary
opcodes = {
    "ADD": 0,
    "SUB": 1,
    "AND": 2,
    "OR": 3
}

for name, code in opcodes.items():
    print(name, "->", code)

# Function
def multiply(a, b):
    return a * b

print("Multiply:", multiply(8, 9))

# Loops
for i in range(5):
    print("Loop:", i)
