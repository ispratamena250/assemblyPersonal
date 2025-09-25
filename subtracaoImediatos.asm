.globl main
.data
.text
main:
	li a1, 550
	li a2, 220
	sub a0, a2, a1
	
	li a7, 1
	ecall
	
	li a7, 10
	ecall