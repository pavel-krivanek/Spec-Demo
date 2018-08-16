initialization
initialize

	super initialize.
	
	name := 'some name'.
	surname := ''.
	number1 := 1.
	number2 := 12.
	scale := 42.
	password := 'password'.
	rememberMe := true.
	date := '2018-01-01' asDate.
	gender := #male.
	selectedItems := { self items at: 3. self items at: 4 }
	