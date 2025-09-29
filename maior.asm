.globl main
.data
	t0maior_string: .asciz " maior"
	t0menor_string: .asciz " menor"
	t0igual_string: .asciz "iguais"
	nl: .asciz "\n"
.text
main:
	#responde de acordo com o segundo numero informado
	#le primeiro numero
	li a7, 5 #a7 = 5
	ecall #le int e armazena em a0
	
	mv t0, a0 #t0 = a0
	
	#le segundo numero
	li a7, 5
	ecall
	
	mv t1, a0
	
	#compara
	bgt t0, t1, maior #branch para maior caso t0 > t1
	beq t0, t1, igual
	
	menor:
		mv a0, t1
		li a7, 1
		ecall #printa int em a0
	
		la a0, t0maior_string
		li a7, 4
		ecall #printa string t0menor_string em a0
		
		j fim
	
	maior:
		mv a0, t1
		li a7, 1
		ecall #printa int em a0
	
		la a0, t0menor_string
		li a7, 4
		ecall #printa string t0maior_string em a0
		
		j fim
		
	igual:
		la a0, t0igual_string
		li a7, 4
		ecall #printa string t0igual_string em a0
		
		j fim
	
	fim:
		la a0, nl
		li a7, 4
		ecall #printa string nl em a0
	
		li a7, 10
		ecall #exit