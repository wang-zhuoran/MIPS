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
		
		# Print value
		li $v0, 1
		move $a0, $s0
		syscall
	
		
		
	# This line is going to sigal end of program
	li $v0, 10
	syscall
	
	increaseMyRegister:
		addi $sp, $sp, -4 # int have 4 byte
		# High address is on the top!
		# also means allocate the memory(stack) for an int value
		
		sw $s0, 0($sp)
		# 0 is offset for address
		# sp is an address
		
		
		addi $s0, $s0, 30
		
		# Print new value in function
		li $v0, 1
		move $a0, $s0
		syscall
		
		# Restore the old value
		lw $s0, 0($sp)
		addi $sp, $sp, 4
		
		jr $ra
		
		
		
		
		
		
		
		
	
	
	
