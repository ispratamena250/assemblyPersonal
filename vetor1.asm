.globl main
.data
	vector: .word 10, 20, 30, 40, 50
	nl_s: .asciz "\n"
.text
main:
	la t0, vector #t0 = vector[0]
	
	lw t1, 8(t0) #t1 = vector[2]
	
	mv a0, t1 #a0 = t0
	
	li a7, 1
	ecall #print int in a0
	
	la a0, nl_s
	li a7, 4
	ecall #print string nl_s in a0
	
	li a7, 10
	ecall #exit