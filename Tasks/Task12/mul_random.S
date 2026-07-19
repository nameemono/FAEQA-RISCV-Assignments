.section .text
.globl _start

_start:

# Test 1
li x13, -77
li x4, -446
mul x28, x13, x4

# Test 2
li x7, 350
li x18, -580
mul x19, x7, x18

# Test 3
li x21, -674
li x9, -365
mul x15, x21, x9

# Test 4
li x31, -799
li x19, -6
mul x5, x31, x19

# Test 5
li x23, -312
li x4, -509
mul x2, x23, x4

# Test 6
li x24, -324
li x18, 499
mul x21, x24, x18

# Test 7
li x7, 84
li x13, 996
mul x4, x7, x13

# Test 8
li x13, -788
li x20, 786
mul x29, x13, x20

# Test 9
li x31, -844
li x8, 621
mul x28, x31, x8

# Test 10
li x15, -239
li x11, 567
mul x7, x15, x11

# Test 11
li x16, 378
li x10, 223
mul x9, x16, x10

# Test 12
li x4, -58
li x8, -452
mul x29, x4, x8

# Test 13
li x15, -323
li x11, -201
mul x9, x15, x11

# Test 14
li x31, -222
li x25, 320
mul x11, x31, x25

# Test 15
li x13, 450
li x11, 813
mul x3, x13, x11

# Test 16
li x24, 809
li x31, 718
mul x25, x24, x31

# Test 17
li x22, 737
li x28, 230
mul x4, x22, x28

# Test 18
li x26, -834
li x24, 200
mul x28, x26, x24

# Test 19
li x15, 313
li x14, -866
mul x19, x15, x14

# Test 20
li x21, 813
li x11, -600
mul x12, x21, x11

end:
    j end
