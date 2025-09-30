.globl main
.data 
	space: .asciz " "
.text
main:
	li t0, 1

	mv a0, t0 #a0 = 1
	li a7, 1 
	ecall #print int in a0
	
	la a0, space
	li a7, 4
	ecall #print string space in a0
	
	mv a0, t0
	
	#while 1
	beq a0, t0, while
	
	while:
		li a7, 1
		ecall #print int in a0
		
		la a0, space 
		li a7, 4
		ecall #print string space in a0
		
		mv a0, t0
		
		j while
		
	li a7, 10
	ecall #exit (tentativa)