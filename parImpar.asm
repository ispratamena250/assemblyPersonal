.globl main
.data
	entrada: .asciz "Digite um numero: "
	par: .asciz " par"
	impar: .asciz " impar"
	nl: .asciz "\n"
.text
main:
	la a0, entrada #a0 = entrada
	li a7, 4 #a7 = 4
	ecall #printa string entrada em a0

	li a7, 5 
	ecall #le int do console e armazena em a0
	
	mv t1, a0 #t1 = a0
	li t2, 2 #t2 = 2
	rem t0, t1, t2 #t0 = t1%t2
	
	beq t0, zero, par_branch #se verdadeiro, sao pares
	
	#sao impares
	li a7, 1
	ecall #printa int ja informado em a0
		
	la a0, impar
	li a7, 4
	ecall #printa string impar em a0
		
	j fim_branch
	
	par_branch:
		li a7, 1
		ecall #printa int ja informado em a0
	
		la a0, par
		li a7, 4
		ecall #printa string par em a0
		
		j fim_branch

	fim_branch:
		la a0, nl
		li a7, 4
		ecall #printa string nl em a0
	
		li a7, 10
		ecall #exit