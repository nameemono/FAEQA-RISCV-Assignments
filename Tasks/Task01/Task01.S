.section .data

value1: .word 10
value2: .word 20
byte1:  .byte 1
half1:  .half 2

.section .text
.globl _start

_start:

# --------------------
# Compute Instructions
# --------------------

li x1, 10
li x2, 20

add   x3, x1, x2
addi  x4, x1, 5
sub   x5, x2, x1

and   x6, x1, x2
andi  x7, x1, 15

or    x8, x1, x2
ori   x9, x1, 8

xor   x10, x1, x2
xori  x11, x1, 3

sll   x12, x1, x2
slli  x13, x1, 2

srl   x14, x2, x1
srli  x15, x2, 1

sra   x16, x2, x1
srai  x17, x2, 1

slt   x18, x1, x2
slti  x19, x1, 15

sltu  x20, x1, x2
sltiu x21, x1, 15

# --------------------
# Load Instructions
# --------------------

la x22, value1

lb x23, 0(x22)
lh x24, 0(x22)
lw x25, 0(x22)

# --------------------
# Store Instructions
# --------------------

sb x23, 0(x22)

# --------------------
# Branch Instructions
# --------------------

beq  x1, x2, equal
bne  x1, x2, notequal
blt  x1, x2, less
bge  x2, x1, greater
bltu x1, x2, uless
bgeu x2, x1, ugreater

equal:
nop

notequal:
nop

less:
nop

greater:
nop

uless:
nop

ugreater:
nop

loop:
j loop