#Factorial_for
#Program that calculates factorial of a number given by user using a for loop.
	.globl main
	
	.data
prompt:	.asciiz "Input a number: "
resMsg: .asciiz "Factorial of this number is: "

	.text
main:
	li 	$v0, 4		#print prompt
	la 	$a0, prompt
	syscall
	li 	$v0, 5		#input a number
	syscall
	
	li	$t1, 1		# t1 = current fact
	li	$t0, 1		# t0 = counter
	
test:	bgt 	$t0, $v0, exit	# if counter greater than number
	mult	$t1, $t0 	# lo = counter * current fact 
	mflo	$t1		# t1 = lo
	addi	$t0, $t0, 1	# t0++
	j	test
	
exit:	li 	$v0, 4		#print message
	la	$a0, resMsg
	syscall
	li	$v0, 1		#print result
	move 	$a0, $t1
	syscall
	
	li 	$v0, 10		# end program syscall
	syscall
 
 