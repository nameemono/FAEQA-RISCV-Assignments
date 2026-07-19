import random

# Random numbers
print("Random Numbers")
for _ in range(5):
    print(random.randint(1, 100))

# Assert
x = 15
assert x == 15
print("Assertion Passed")

# Class
class Student:
    def __init__(self, name):
        self.name = name

    def greet(self):
        print(f"Hello, I am {self.name}")

student = Student("Nazmie")
student.greet()

# Generator
def counter(n):
    for i in range(n):
        yield i

print("Generator Output")
for value in counter(5):
    print(value)
