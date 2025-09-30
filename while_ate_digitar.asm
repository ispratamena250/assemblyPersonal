.globl main
.data
	type_string: .asciz "Digite: "
	nl_string: .asciz "\n"
.text
main:
	la a0, type_string #a0 = type_string
	li a7, 4 #a7 = 4
	ecall #print string type_string em a0
	
	li a7, 5
	ecall #le int do console e armazena em a0
	
	while:
		la a0, type_string
		li a7, 4
		ecall #print string type_string em a0
		
		li a7, 5
		ecall #le int do console
		
		beq a0, zero, fim
		
		j while
	
	fim:
		la a0, nl_string
		li a7, 4
		ecall #print string nl_string em a0
		
		li a7, 10
		ecall #exit