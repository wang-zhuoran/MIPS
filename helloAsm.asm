.data

	myMessage: .asciiz "Hello World!\n" 

.text
	li $v0, 4 #4 indicates that its a char or string, its just a signal
	la $a0, myMessage #load address
	syscall
	# li and la instruction are provided by assembler(rather than the processor, be carefull!)
	# syscall means that we want this peice of code run 
	
	
	
	
	
