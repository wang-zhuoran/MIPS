.data


.text

	addi $t0, $zero, 30
	addi $t1, $zero, 4
	
	div $t0, $t1
	
	# move from low/high
	mflo $s0 # Quotinet
	mfhi $s1 # Remainder
	
	
	# Print
	li $v0, 1
	add $a0, $zero, $s1 
	syscall