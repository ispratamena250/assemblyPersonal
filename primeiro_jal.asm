.globl main
.data
	nl_s: .asciz "\n"
.text
main:
	li a0, 4 #load immediate 4 in a0
	li a1, 7
	
	jal ra, sum #jump to sum and link return 
	
	li a7, 1
	ecall #print int in a0
	
	la a0, nl_s #load address string nl_s in a0
	li a7, 4
	ecall #print string nl_s in a0
	
	li a7, 10
	ecall #exit
	
	sum:
		add a0, a0, a1 #a0 += a1
		
		ret #return to ra register