.globl main
.data 
	nl: .asciz "\n"
.text
main:
	li a7, 5 #ler do console e armazena em a0
	ecall
	
	li a7, 1 #printa o inteiro que esta em a0
	ecall
	
	la a0, nl #atribui o endeco da string nl para a0
	li a7, 4 
	ecall #printa a string em a0
	
	li a7, 10 #exit
	ecall 