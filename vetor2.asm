.globl main
.data
	vector: .word 10, 20, 30, 40, 50
	space_s: .asciz " "
	nl_s: .asciz "\n"
.text
main:
	la t0, vector #t0 = vector[0]
	
	#index i
	li t1, 0 #t1 = 0
	
	#size 
	li t2, 5
	
	for:
		bge t1, t2, end #branch to end if t1 >= t2 
		
		lw a0, 0(t0) #a0 = vector[t0]
		
		li a7, 1
		ecall #print int in a0
		
		la a0, space_s
		li a7, 4
		ecall #print string space_s in a0
		
		addi t0, t0, 4 #t0 += 4 (1 word)
		
		addi t1, t1, 1 #i++
		
		j for
	
	end:
		la a0, nl_s
		li a7, 4
		ecall #print string nl_s in a0
		
		li a7, 10
		ecall #exit