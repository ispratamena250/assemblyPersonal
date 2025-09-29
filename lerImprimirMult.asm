.globl main
.data
	type: .asciz "Digite dois numeros: "
	mult: .asciz "Multiplicacao: "
	nl: .asciz "\n"
.text
main:
	la a0, type #a0 = type
	li a7, 4 #a7 = 4
	ecall #imprime a0
	
	li a7, 5 
	ecall #le inteiro do console (a7 = 5) e armazena em a0 
	
	mv t0, a0 #t0 = a0
	
	li a7, 5
	ecall 
	
	mv t1, a0 #t1 = a0
	
	la a0, mult
	li a7, 4
	ecall #printa string (a7 = 4) em a0
	
	mul a0, t0, t1 #a0 = t0 * t1
	
	li a7, 1
	ecall #printa o inteiro em a0
	
	la a0, nl
	li a7, 4
	ecall #printa string em a0
	
	li a7, 10
	ecall #exit