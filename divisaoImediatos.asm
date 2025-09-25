.globl main
.data
	quociente: .asciz "q="
	resto: .asciz "r="
	bn: .asciz "\n"
.text
main:
	li t0, 50
	li t1, 24
	div t2, t0, t1
	rem t3, t0, t1
	
	la a0, quociente 
	li a7, 4 
	ecall #printa q=
	mv a0, t2
	li a7, 1
	ecall #printa t2
	
	la a0, resto
	li a7, 4
	ecall #printa r=
 	mv a0, t3
 	li a7, 1
 	ecall #printa t3
 	
 	la a0, bn
 	li a7, 4
 	ecall #printa \n
	
	li a7, 10
	ecall