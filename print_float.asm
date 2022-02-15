.data
	PI: .float 3.1415

.text

	li $v0, 2 # 2 indicates float
	lwc1 $f12, PI # load word from coprocessor 1, f12 is predefined
	syscall
	



