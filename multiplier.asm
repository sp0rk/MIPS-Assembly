#Multiplier
#Program that takes input of a number from user, multiplies it with 8, and prints the result
	
	.globl main

	.data		# Data declaration ahead:
a:	.word	8	# initialise variable called a that is 32bit and initial value is 8
			#initialise a prompt for input
prompt:	.asciiz	"Please, input an integer "
msgRes: .asciiz "\nThe result is: "

	.text
main:	
	la $a0, prompt 	#print a prompt for user input
	li $v0, 4
	syscall
	li $v0, 5	# 5 in v0 makes syscall take user input
	syscall
	
	lw $t0, a	#load a to t0
	mult $t0, $v0	# t0 * v0, result to 
	mflo $t0
	
	la $a0, msgRes 	#print a result message
	li $v0, 4
	syscall
	
	move $a0, $t0 	#print the result
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	