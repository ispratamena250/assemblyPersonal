#Read an integer from console and iterate a seven times loop for beginning on this integer adding it 1 and printing the resulting sums in one line.
#Hint: already commented instructions won't be recommented.
#Hint: after an underline (_) there is a hint of the "type" of an object; 's' for strings, 'l' for labels, etc.
.globl main_l
.data
	xs_v: .word 0, 0, 0, 0, 0, 0, 0 #initialized 7-size vector
	input1_s: .asciz "First integer:"
	output1_s: .asciz "Vector:"
	openCurlyBracket_s: .asciz "{"
	closeCurlyBracket_s: .asciz "}"
	comma_s: .asciz ","
	space_s: .asciz " "
	nl_s: .asciz "\n"
.text
main_l:
	#init
	la t0, xs_v #load xs_v[] address in t0 (t0 = xs_v[0])
	li t1, 0 #load immediate in t1 (index i)
	li t2, 7 #size 

	#print input1_s
	la a0, input1_s
	li a7, 4 
	ecall #print string type_s in a0

	#print space_s
	la a0, space_s
	li a7, 4
	ecall #print string in a0

	#read and store
	li a7, 5
	ecall #read int from console and load it in a0
	sw a0, 0(t0) #store a0 word in xs_v[0]
	
	#print output1_s
	la a0, output1_s
	li a7, 4
	ecall #print string in a0
	
	#print space_s
	la a0, space_s
	li a7, 4
	ecall #print string in a0
	
	#open curly bracket
	la a0, openCurlyBracket_s
	li a7, 4
	ecall #print string in a0
	
	j for1_l #inconditional jump
	
	for1_l:
		bge t1, t2, end_l #branch if t1 == t2
		
		lw a0, 0(t0)  #load xs_v[] word int a0
	
		#print current elemment
		li a7, 1
		ecall #print int in a0

		#jump and assert a0
		jal ra, printEstatements_l #jump and link next instruction in ra
		lw a0, 0(t0) #re-load corret integer in a0

		#increment element
		addi a0, a0, 1 #a0++

		#increment position
		addi t0, t0, 4

		#insert element in position
		sw a0, 0(t0) #store a0 in xs_v[t2]
			
		#increment i
		addi t1, t1, 1			
		
		j for1_l

	#print brackets, space and comma
	printEstatements_l:
		#comma
		la a0, comma_s
		li a7, 4
		ecall #print string in a0
		
		#space
		la a0, space_s
		li a7, 4
		ecall #print string in a0
		
		ret #return to ra register address

	end_l:
		#close curly bracket
		la a0, closeCurlyBracket_s
		li a7, 4
		ecall #print string in a0
		
		#print nl_s
		la a0, nl_s
		li a7, 4
		ecall #print string in a0
		
		#return 0
		li a7, 10		
		ecall #exit
