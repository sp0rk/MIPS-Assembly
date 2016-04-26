#Polynomial
#Program that calculates the value of degree 4 single-variable polynomial
	.globl	main
	
	.data
pa:	.asciiz	"The polynomial is in form of: ax^4 + bx^3 + cx^2 + dx + e.\nInput coefficient a: "
pb:	.asciiz	"Input coefficient b: "
pc:	.asciiz	"Input coefficient c: "
pd:	.asciiz	"Input coefficient d: "
pe:	.asciiz	"Input coefficient e: "
px:	.asciiz	"Input argument x: "
resMsg:	.asciiz "Result of the polynomial is: "
	
	.text
main:	
		# print prompt and save a
	li	$v0, 4
	la	$a0, pa
	syscall
	li	$v0, 5
	syscall
	move	$t0, $v0	# $t0 = a
		# print prompt and save b
	li	$v0, 4
	la	$a0, pb
	syscall
	li	$v0, 5
	syscall
	move	$t1, $v0	# $t1 = b
		# print prompt and save c
	li	$v0, 4
	la	$a0, pc
	syscall
	li	$v0, 5
	syscall
	move	$t2, $v0	# $t2 = c
		# print prompt and save d
	li 	$v0, 4
	la 	$a0, pd
	syscall
	li 	$v0, 5
	syscall
	move 	$t3, $v0	# $t3 = d
		# print prompt and save e
	li 	$v0, 4
	la 	$a0, pe
	syscall
	li 	$v0, 5
	syscall
	move 	$t4, $v0	# $t4 = e
		# print prompt and save x
	li 	$v0, 4
	la 	$a0, px
	syscall
	li 	$v0, 5
	syscall
	move 	$t5, $v0	# $t5 = x
		# End of reading data: t0:a, t1:b, t2:c, t3:d, t4:e, t5:x
		
		# Following vars: t6:result, t7:temp, t8: x^n
	add 	$t6, $zero, $t4	# t6 = e
	
	mult 	$t3, $t5	# lo = d * x
	mflo 	$t7		# t7 = lo
	add	$t6, $t6, $t7	# t6 = e + dx
	
	mult	$t5, $t5	# lo = x * x
	mflo	$t8		# t8 = x^2
	mult	$t2, $t8	# lo = c * x^2
	mflo	$t7
	add	$t6, $t6, $t7	# t6 = e + dx + cx^2
	
	mult	$t8, $t5	# lo = x^2 * x
	mflo	$t8		# t8 = x^3
	mult	$t1, $t8	# lo = b * x^3
	mflo	$t7
	add	$t6, $t6, $t7	# t6 = e + dx + cx^2 + bx^3
	
	mult	$t8, $t5	# lo = x^3* x
	mflo	$t8		# t8 = x^4
	mult	$t0, $t8	# lo = a * x^4
	mflo	$t7
	add	$t6, $t6, $t7	# t6 = e + dx + cx^2 + bx^3 + ax^4
	
		#printing
	li 	$v0, 4		#print result message
	la 	$a0, resMsg
	syscall
	li 	$v0, 1		#print the result
	move	$a0, $t6
	syscall
	
	li 	$v0, 10		# end program syscall
	syscall