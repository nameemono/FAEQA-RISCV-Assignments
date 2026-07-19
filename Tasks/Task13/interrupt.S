.section .text
.globl _start

_start:

# -----------------------------
# Enable Machine Software Interrupt
# -----------------------------

li t0, 0x8              # MSIE bit
csrs mie, t0            # Set mie.msie

# -----------------------------
# Enable Global Machine Interrupt
# -----------------------------

li t0, 0x8              # MIE bit
csrs mstatus, t0

# -----------------------------
# Trigger Software Interrupt
# -----------------------------

li t1, 0x02000000       # CLINT MSIP address
li t2, 1

sw t2, 0(t1)

end:
    j end