.globl main
.data
	nl_s: .asciz "\n"
.text
main:
	li a7, 5 #read integer
	ecall 
	
	mv t0, a0
	
	li a7, 5 #read integer 
	ecall
	
	mv t1, a0
	
	xor a1, t0, t1
	
	mv a0, a1
	
	li a7, 1
	ecall 
	
	la a0, nl_s
	li a7, 4
	ecall