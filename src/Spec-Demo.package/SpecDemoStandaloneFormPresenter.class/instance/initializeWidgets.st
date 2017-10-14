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

	checkboxLabel := self newLabel label: 'remember me'.
	checkboxInput := self newCheckBox state: true.

	colorLabel := self newLabel label: 'color:'.
	colorInput := self newTextInput.

	dateLabel := self newLabel label: 'date:'.
	dateInput := self instantiate: DateModel.

	genderLabel := self newLabel label: 'gender:'.
	genderGroup := self instantiate: RadioButtonGroupModel .
	genderGroup
		addRadioButton: (RadioButtonModel new label: 'male');
		addRadioButton: (RadioButtonModel new label: 'female').
	
	itemsLabel := self newLabel label: 'items:'.
	itemsInput := self newList.
	itemsInput items: (1 to: 5).
	
	
	self focusOrder 
		add: nameTextInput;
		add: surnameTextInput;
		add: number1Input;
		add: number2Input;
		add: scaleInput;
		add: passwordInput;
		add: checkboxInput;
		add: colorInput.
		