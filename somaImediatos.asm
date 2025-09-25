.globl main
.data
.text
main:
	li t0, 18
	li t1, 800
	add t2, t0, t1
	
	mv a0, t2
	li a7, 1
	ecall
	
	li a7, 10
	ecall