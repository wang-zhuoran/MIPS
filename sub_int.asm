.data
	num1: .word 20
	num2: .word 10

.text
	lw $s0, num1 # s0 = num1 = 20 and normally s0 is reserved for function args
	lw $s1, num2 # s1 = 10
	
	sub $t0, $s0, $s1 # t0 = s0 - s1
	
	li $v0, 1
	#add $a0, $t0, $zero
	move $a0, $t0 # a0 = t0
	syscall



