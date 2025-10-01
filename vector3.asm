#print a vector and reprint it with its elements timed by 2
.globl main
.data
	xs: .word 10, 20, 30, 40, 50
	nl_s: .asciz "\n"
	space_s: .asciz " "
.text
main:
	la t0, xs #load address xs[0] in t0
	
	#index i
	li t1, 0 #load 0 in t1
	
	#size
	li t2, 5 
	
	#print xs
	for:
		beq t1, t2, reatribute #branch to end if t0 = t1
	
		lw a0, 0(t0) #load word xs[t0] in a0
		li a7, 1
		ecall #print int in a0
		
		la a0, space_s #load adress space_s in a0
		li a7, 4
		ecall #print string space_s in a0
		
		addi t0, t0, 4 #t0 += 4 (1 word)
		
		addi t1, t1, 1 #t1++
		
		j for #inconditional jump to for
		
	#reatribute t0 and t1
	reatribute:
		la t0, xs
		
		li t1, 0
		
		la a0, nl_s
		li a7, 4
		ecall #print string nl_s in a0
		
		j for2
		
	#rewrite and print xs
	for2: 
		beq t1, t2, end
		
		lw t3, 0(t0)
		li t4, 2
		mul t3, t3, t4 #t3 = xs[t0] * 2
		sw t3, 0(t0) #store t3 word in xs[t0]
		
		lw a0, 0(t0)
		li a7, 1
		ecall #print int in a0
		
		la a0, space_s
		li a7, 4
		ecall #print string space_s in a0
		
		addi t0, t0, 4 #t0 += 4 (1 word)
		
		addi t1, t1, 1 #t1++
		
		j for2		

	end:
		la a0, nl_s
		li a7, 4
		ecall #print string nl_s in a0
		
		li a7, 10
		ecall #exit