.data
	message: .asciiz "Hola! \nMy name is Joseph. \n"
	
	message2: .asciiz "The function has been called!"
	
.text
	# main label
	main: 
	
		jal displayMessage # Jump to the place of the function
		
		li $v0, 4
		la $a0, message2
		syscall
		
	# Tell the system that the program is done.
	# Otherwise, the main part will be excuted infinitly
	# Like return 0;
	li $v0, 10
	syscall
	
	
	displayMessage:
		li $v0, 4
		la $a0, message
		syscall
		
		jr $ra # Go back to the place where the main call it
	
	
	
	


