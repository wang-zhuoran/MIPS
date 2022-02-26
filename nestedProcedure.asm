.data

	newLine: .asciiz "\n"

.text
	# The convention of t registers and s registers:
	# t register is callee saved
	# s register is caller saved
	# which means if you want to use s register in the function
	# you have to save the old value to the stack!
	main:
		addi $s0, $zero, 10
		
		
		jal increaseMyRegister
		
		
		# Print a new line
		li $v0,4
		la $a0, newLine
		syscall
		
		jal printTheValue
	
		
		
	# This line is going to sigal end of program
	li $v0, 10
	syscall
	
	increaseMyRegister:
		addi $sp, $sp, -8 # int have 4 byte
		# Also the function address needs to be stored
		# High address is on the top!
		# also means allocate the memory(stack) for an int value
		
		sw $s0, 0($sp)
		# 0 is offset for address
		# sp is an address
		
		sw $ra, 4($sp)

				
		
		addi $s0, $s0, 30
		
		
		# Nested Procedure
		jal printTheValue
		
		
		
		# Restore the old value
		lw $s0, 0($sp)
		lw $ra, 4($sp)
		addi $sp, $sp, 4
		
		jr $ra
		
		
	
	printTheValue:
		# Print new value in function
		li $v0, 1
		move $a0, $s0
		syscall
		
		jr $ra
		
	
	
	
		
		
		
		
		
		
		
		
	
	
	
