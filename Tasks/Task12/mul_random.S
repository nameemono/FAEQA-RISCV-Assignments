.section .text
.globl _start

_start:

# Test 1
li x16, 86
li x26, 54
mul x5, x16, x26

# Test 2
li x9, 71
li x25, 10
mul x26, x9, x25

# Test 3
li x28, 96
li x27, 65
mul x3, x28, x27

# Test 4
li x21, 99
li x28, 23
mul x23, x21, x28

# Test 5
li x4, 77
li x28, 82
mul x20, x4, x28

# Test 6
li x21, 23
li x6, 15
mul x12, x21, x6

# Test 7
li x8, 9
li x12, 71
mul x12, x8, x12

# Test 8
li x10, 90
li x21, 17
mul x28, x10, x21

# Test 9
li x22, 58
li x4, 37
mul x20, x22, x4

# Test 10
li x12, 17
li x14, 26
mul x7, x12, x14

# Test 11
li x14, 67
li x5, 69
mul x18, x14, x5

# Test 12
li x6, 54
li x16, 26
mul x3, x6, x16

# Test 13
li x26, 98
li x27, 23
mul x14, x26, x27

# Test 14
li x9, 51
li x18, 99
mul x13, x9, x18

# Test 15
li x7, 53
li x19, 55
mul x23, x7, x19

# Test 16
li x22, 52
li x20, 99
mul x4, x22, x20

# Test 17
li x13, 88
li x25, 70
mul x9, x13, x25

# Test 18
li x27, 78
li x23, 98
mul x20, x27, x23

# Test 19
li x14, 60
li x19, 32
mul x22, x14, x19

# Test 20
li x10, 15
li x19, 82
mul x27, x10, x19

end:
    j end
