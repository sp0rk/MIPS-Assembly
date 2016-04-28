#Bubble Sort
#Program that sorts an array of integers using functions
	.globl main
	
	.data
prompt:	.asciiz	"Input 10 numbers:"
array:	.word	0:10
	
	.text
main:
	la	$t0, array	#t0 is an adress to array var

	li	$v0, 5		#load one number
	syscall
	sw 	$v0, ($t0)	#store number in zeroth place of array
	
	li	$v0, 5		#load other number
	syscall
	sw	$v0, 4($t0)	#store number in first place of array
	
	li	$v0, 1		#print the numbers
	lw	$a0, ($t0)
	syscall
	lw	$a0, 4($t0)	
	syscall
	
	la	$a0, ($t0)	#load first argument of function swap
	la	$a1, 4($t0)	#load second argument
	jal	swap		#call swap
	
	
	li	$v0, 1		#print numbers under adresses returned from function
	lw	$a0, ($a0)
	syscall
	lw	$a0, ($a1)
	syscall
	
	
	li	$v0, 10		#halt program
	syscall
	

swap:				#swap function
	lw	$t0, ($a0)	#load both numbers from RAM
	lw	$t1, ($a1)
	sw	$t1, ($a0)	#save them to RAM in reverse order
	sw 	$t0, ($a1)
	jr 	$ra		#return with no return value