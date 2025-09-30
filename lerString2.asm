.globl main
.data
	type_s: .asciz "Type string: "
	buffer: .space 100
	nl_s: .asciz "\n"
.text
main:
	la a0, type_s #a0 = type_s
	li a7, 4 #a7 = 4
	ecall #print string in a0
	
	la a0, buffer 
	li a1, 100 #size of the string
	
	li a7, 8
	ecall #read string from console and puts in a0
	
	li a7, 4
	ecall #print string in a0
	
	fim:
		la a0, nl_s
		li a7, 4
		ecall #print string in a0
		
		li a7, 10
		ecall #exit