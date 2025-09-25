.globl main
.data
	string: .asciz "Hello world 2"
	nl: .asciz "\n"
.text
main:
	la a0, string
	li a7, 4 #print string in a0
	ecall
	
	la a0, nl
	ecall #executa a7
	
	li a7, 10 #stop program
	ecall