.data
	age: .word 21

.text
	li $v0, 1 #1 indicates an int!
	lw $a0, age
	syscall



