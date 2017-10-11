initialization
initializeWidgets

	nameLabel := self newLabel label: 'name:'.
	nameTextInput := self newTextInput.

	surnameLabel := self newLabel label: 'surname:'.
	surnameTextInput := self newTextInput.
	surnameTextInput ghostText: 'empty'.

	number1Label := self newLabel label: 'number 1:'.
	number1Input := self newTextInput.

	number2Label := self newLabel label: 'number 2:'.
	number2Input := self newTextInput.

	scaleLabel := self newLabel label: 'scale:'.
	scaleInput := self newSlider.

	passwordLabel := self newLabel label: 'password:'.
	passwordInput := self newTextInput encrypted: true.

	
	self focusOrder 
		add: nameTextInput;
		add: surnameTextInput;
		add: number1Input;
		add: number2Input;
		add: scaleInput;
		add: passwordInput.
		