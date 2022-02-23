.data
	myDouble:   .double 3.1425926535
	zeroDouble: .double 0.0

.text
	ldc1 $f2, myDouble
	ldc1 $f0, zeroDouble
	# we have to define a pair, because it's double precision
	li $v0, 3 # double
	add.d $f12, $f2, $f0
	syscall
	
	



