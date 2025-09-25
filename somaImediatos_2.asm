.globl main
.data
.text
main:
	li a0, -100 #atribui -100 a a0
	li a1, 54 #atribui 54 a a1
	add a2, a0, a1 #a2 = a0 + a1
	mv a0, a2 #a0 = a2
	li a7, 1 #a7 = 1 para printar um inteiro que esteja em a0
	
	ecall #executa a7
	
	li a7, 10 #para parar de rodar
	ecall