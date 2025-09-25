.globl main
.data
.text
main:
	addi t0, zero, 17
	addi t1, zero, 20
	mul a0, t0, t1
	
	li a7, 1
	ecall 
	
	li a7, 10
	ecall