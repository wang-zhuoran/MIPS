.data
	

.text
	# Three ways to conduct multiplication operation in MIPS:
	# 1. mul
	# 2. mult
	# 3. sll (shift left logical)
	addi $s0, $zero, 10
	addi $s1, $zero, 4
	
	mul $t0, $s0, $s1 # t0 = s0 + s1
	
	li $v0, 1
	move $a0, $t0 # a0 = t0
	syscall
