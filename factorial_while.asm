#Factorial_while
#Program that calculates factorial of a number given by user using a while loop.
	.globl main
	
	.data
prompt:	.asciiz "\nInput a number: "
resMsg: .asciiz "Factorial of this number is: "
repeat:	.asciiz "\nDo you want to repeat calculation? y/n: "
answer:	.asciiz "yn"
input:	.space	2

	.text
main:
	li 	$v0, 4		#print prompt
	la 	$a0, prompt
	syscall
	li 	$v0, 5		#input a number
	syscall
	
	li	$t1, 1		# t1 = current fact
	li	$t0, 1		# t0 = counter
	
test:	mult	$t1, $t0 	# lo = counter * current fact 
	mflo	$t1		# t1 = lo
	addi	$t0, $t0, 1	# t0++
	ble 	$t0, $v0, test	# if counter greater than number
	
	li 	$v0, 4		# print message
	la	$a0, resMsg
	syscall
	li	$v0, 1		# print result
	move 	$a0, $t1
	syscall
	
ask:	li	$v0, 4		# print prompt for repeat
	la	$a0, repeat
	syscall
	li	$v0, 8		# read string of length 2 (including \n) to input
	la	$a0, input
	li	$a1, 2
	syscall
	lb	$t2, 0($a0)
	beq	$t2, 'y', main	# if y then go to start
	bne	$t2, 'n', ask	# if n continue, else go to ask
	
	li 	$v0, 10		# end program syscall
	syscall
 
 