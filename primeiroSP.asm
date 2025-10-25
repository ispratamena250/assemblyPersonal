.globl main
.data
	nl_s: .asciz "\n"
.text
main:
	addi sp, sp, -12 #12/4 = 3 (addresses)
	addi a2, a2, 0 #index i
	addi a3, a3, 3 #size
	addi a1, sp, 0 #auxiliar
		
	li t0, 4
	li t1, 260
	li t2, 0
	
	sw t0, 0(sp)
	sw t1, 4(sp)
	sw t2, 8(sp)
	
	for1:
		bge a2, a3, outFor1
		
		lw a0, 0(a1)
		
		li a7, 1
		ecall
		
		la a0, nl_s
		li a7, 4
		ecall

		addi a1, a1, 4
		addi a2, a2, 1
			
		j for1
		
	outFor1:
	
	add t2, t0, t1	
	sw t2, 8(sp)

	li a2, 0
	addi a1, sp, 0
	la a0, nl_s
	li a7, 4
	ecall
	
	for2:
		bge a2, a3, doneFor2
	
		lw a0, 0(a1)
		
		li a7, 1
		ecall
		
		la a0, nl_s
		li a7, 4
		ecall
		
		addi a1, a1, 4
		addi a2, a2, 1
		
		j for2 
		
	doneFor2:
	
	addi sp, sp, 12
	
	li a7, 10
	ecall