.section .data

value1: .word 10
value2: .word 20

f1: .float 5.5
f2: .float 3.5

d1: .double 20.0
d2: .double 4.0

atomic_var: .word 1

.section .text
.globl _start

_start:

# ------------------------
# M Extension
# ------------------------

li x1, 10
li x2, 20
mul x3, x1, x2

# ------------------------
# F Extension
# ------------------------

la x4, f1
flw f0, 0(x4)

la x5, f2
flw f1, 0(x5)

fmax.s f2, f0, f1

# ------------------------
# D Extension
# ------------------------

la x6, d1
fld f3, 0(x6)

la x7, d2
fld f4, 0(x7)

fdiv.d f5, f3, f4

# ------------------------
# A Extension
# ------------------------

la x8, atomic_var
li x9, 4

amoor.w x10, x9, (x8)

# ------------------------
# C Extension
# ------------------------

c.slli x1, 1

end:
    j end