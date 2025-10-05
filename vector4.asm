#Read an integer from console and iterate a seven times for beginning on this integer adding it by 1 and printing the resulting sums in one line.
#Hint: already commented instructions wont be recommented.
#Hint: after an underline (_) is a hint of the "type" of an object; 's' for strings, 'l' for labels, etc.
.globl main_l
.data
	xs_v: .word 0, 0, 0, 0, 0, 0, 0 #initialized 7-size vector
	input1_s: .asciz "Enter an integer:"
	output1_s: .asciz "Loop:"
	space_s: .asciz " "
	nl_s: .asciz "\n"
.text
main_l:
	#init
	li t0, 0 #load immediate in t0 (index i)
	li t1, 7 #size
	la t2, xs_v #load xs_v[] address in t2 (t2 = xs_v[0])

	#print input1_s
	la a0, input1_s
	li a7, 4 
	ecall #print string type_s in a0

	#print space_s
	la a7, space_s
	li a7, 4
	ecall #print string in a0

	#read and store
	li a7, 5
	ecall #read int from console and load it in a0
	sw a0, t0(t2) #store a0 word in xs_v[0]

	#print output1_s
	la a0, output1_s
	li a7, 4
	ecall #print string in a0
	
	#print space_s
	la a0, space_s
	li a7, 4
	ecall #print string in a0
	
	for_l:
		beq t0, t1, end_l #branch if t0 == t1
		
		lw a0, 0(t2)  #load xs_v[] word int a0
	
		#print current elemment
		li a7, 1
		ecall #print int in a0
		
		#print space_s
		la a0, space_s 
		li a7, 4
		ecall #print string in a0
		
		lw a0, t0(t2)
		
		#increment element
		addi a0, a0, 1 #a0 += 1

		sw a0, t0(t2)
						
		#increment
		addi t0, t0, 1
		
		j for_l #inconditional jump

	end_l:
		#print nl_s
		la a0, nl_s
		li a7, 4
		ecall #print string in a0
		
		#return 0
		li a7, 10		
		ecall #exit