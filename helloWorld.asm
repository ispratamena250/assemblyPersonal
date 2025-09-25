.globl main
.data
	string: .asciz "Hello wordl\n"
.text
main:
 	addi a7, zero, 4 #Inicia a7 com 4 para printar string armazenada em a0
	la a0, string #atribui o endereco da string para a0
	ecall #executa o que esta em a7
	
	li a7, 10 #atribui 10 a a7
	ecall #executa o que esta em a7