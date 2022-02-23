.data
	num1: .word 5
	num2: .word 10

.text
	# load int to register
	lw $t0, num1
	lw $t1, num2
	# perform addition operation
	add $t2, $t1, $t0 # t2 = t1 + t0
	# print out result!
	li $v0, 1
	add $a0, $zero, $t2
	syscall



