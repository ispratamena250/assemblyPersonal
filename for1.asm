#imprime de 0 ate n informado
.globl main
.data
	type: .asciz "Digite: "
	space: .asciz " "
	nl: .asciz "\n"
.text
main:
	la a0, type #a0 = tyope
	li a7, 4 #a7 = 4
	ecall #print string em a0

	li a7, 5
	ecall #le int do console e armazena em a0
	
	#n
	mv t0, a0 #t0 = a0
	
	#index i
	add t1, t1, zero
	
	loop:
		mv a0, t1
		li a7, 1
		ecall #print int em a0
	
		la a0, space
		li a7, 4
		ecall #printa string space em a0
	
		beq t1, t0, fim #branch se t1 = a0
		addi t1, t1, 1 #t1 += 1
		
		j loop #jump loop

	fim:
		la a0, nl
		li a7, 4
		ecall #imprime string nl em a0
		
		li a7, 10
		ecall #exit