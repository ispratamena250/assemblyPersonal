.data
	newline: .asciz "\n"	

.text
.globl main

main:
	li t0, 4
	li t1, 10
	add t2, t0, t1
	mv a0, t2
	li a7, 1
	ecall
	la a0, newline
	li a7, 4
	ecall
	li a7, 10
	ecall