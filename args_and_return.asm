.data
	
	
.text
	
	main:
		
		addi $a1, $zero, 50 # First argument
		addi $a2, $zero, 100 # Second argument
		
		jal addNumbers
		
		# Print
		li $v0, 1
		addi $a0, $v1, 0
		syscall
		
		
	li $v0, 10
	syscall
	
	
	addNumbers:
		
		add $v1, $a1, $a2 # v1 is by convention
		
		jr $ra
	
	
	
	
	
	