.globl main
.data
	type_string: .asciz "Digite (zero para parar): "
	ans_string: .asciz "Ans: "
	nl_string: .asciz "\n"
.text
main:
	la a0, type_string #a0 = type_string
	li a7, 4 #a7 = 4
	ecall #print string type_string em a0
	
	li a7, 5
	ecall #le int do console e armazena em a0
	
	mv t0, a0 #t0 = a0
	
	add t0, t0, t0 #t0 += t0
	
	la a0, ans_string
	li a7, 4
	ecall #print string em a0
	
	mv a0, t0
	
	li a7, 1
	ecall #print int em a0
	
	la a0, nl_string 
	li a7, 4
	ecall #print string nl_string em a0
	
	while:
		la a0, type_string
		li a7, 4
		ecall #print string type_string em a0
		
		li a7, 5
		ecall #le int do console
		
		mv t0, a0
		
		add t0, t0, t0
		
		la a0, ans_string
		li a7, 4
		ecall #print string ans_string em a0
		
		mv a0, t0
		li a7, 1
		ecall #print int em a0
		
		la a0, nl_string
		li a7, 4
		ecall #print string nl_string em a0
		
		mv a0, t0
		
		beq a0, zero, end
		
		j while

	end:
		la a0, nl_string
		li a7, 4
		ecall #print string nl_string em a0
		
		li a7, 10
		ecall #exit