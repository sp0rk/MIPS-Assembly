	#Bubble Sort
#Program that sorts an array of integers using functions
	.globl main
	
	.data
hmPmt:	.asciiz	"How many numbers do you want to input (1 - 255)? "
snPmt:	.asciiz "Input next number: "
array:	.word	0:256
	
	.text
main:	
	li	$v0, 4
	la	$a0, hmPmt	#print prompt
	syscall
	li	$v0, 5
	syscall
	move	$t1, $v0	#save number of numbers to t1
	move	$s1, $t1	#copy for later reference
	la	$t0, array	#t0 is an adress to array var
input:	
	li 	$v0, 4
	la	$a0, snPmt	#print prompt
	syscall
	li 	$v0, 5		#input a number
	syscall
	sw	$v0, ($t0)	#save number to array
	addi	$t0, $t0, 4	#increase word array pointer
	subi	$t1, $t1, 1	#decrease remaining numbers
	bgtz	$t1, input	#loop if t1>0
	
	la	$a0, array
	move	$a1, $s1
	jal	print
	
	#BUBBLESORT ALGORITHM IMPLEMENTED HERE
	subi	$s2, $s1, 1
	mul	$s2, $s2, 4	#because skipping adress every 4 bytes
	la	$t2, array	#t2 is adress of array beginning
	li	$t0, 0		#loop indices
loopA:	
	li	$t1, 0	
loopB:
	add	$a0, $t2, $t1	#a0 is adress of a[j] for swap
	lw	$t5, ($a0)	#a[j] in t5 for comparison
	lw	$t4, 4($a0)	#a[j+1] in t4 for comparison
	ble	$t5, $t4, nif	#if a[j] > [aj+1]: swap
	jal	swap
nif:	
	addi	$t1, $t1, 4	#increment b index
	blt	$t1, $s2, loopB	# loopB
	addi	$t0, $t0, 4	#increment a index
	blt	$t0, $s2, loopA	# loopA
	
	la	$a0, array
	move	$a1, $s1
	jal	print
	
	li	$v0, 10		#halt program
	syscall
	
	
	
	
swap:				#function that swaps two numbers ->  ($a0), 4($a0) = 4($a0), ($a0)
	lw	$t6, ($a0)	#load both numbers from RAM
	lw	$t7, 4($a0)
	sw	$t7, ($a0)	#save them to RAM in reverse order
	sw 	$t6, 4($a0)
	jr 	$ra		#return with no return value
	
print:				#function that prints the array whose beginning is given at $a0
	move	$t0, $a0 	#adress to start of array
	move	$t1, $a1	#size of array
	li	$v0, 11		#print character
	li	$a0, 10		#10 is ASCII for \n
	syscall
p_num:	
	li	$v0, 1		#print integers
	lw	$a0, ($t0)
	syscall
	li	$v0, 11		#print character
	li	$a0, 32		#32 is ASCII for space
	syscall
	addi	$t0, $t0, 4	#increase index of element in array
	subi	$t1, $t1, 1	#decrease number of remaining elements
	bgtz	$t1, p_num
	jr	$ra
	
	
	
	
	
	
	
	
