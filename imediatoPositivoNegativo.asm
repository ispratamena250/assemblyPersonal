.globl main
.data
	pos_string: .asciz " positivo"
	neg_string: .asciz " negativo"
	nl: .asciz "\n"
.text
main:
	li a7, 5 #a7 = 5
	ecall #le int do console e armazena em a0
	
	#ao > 0
	bgt a0, zero, positivo #branch para positivo se a0 > 0
	
	#a0 == 0
	beq a0, zero, iguailZero
	
	#ao < 0
	li a7, 1
	ecall #printa int em a0
	
	la a0, neg_string #ao = neg_string
	li a7, 4
	ecall #printa string neg_string em a0
	
	j fim #jump para fim
	
	positivo:
		li, a7, 1
		ecall #printa int em a0
		
		la a0, pos_string
		li a7, 4
		ecall #printa string pos_string em a0
		
		j fim
		
	iguailZero:
		li a7, 1
		ecall #printa int em a0
		
		j fim

	fim:
		la a0, nl
		li a7, 4
		ecall 
		
		li a7, 10
		ecall #exit