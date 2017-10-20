initialization
initializeWidgets

	nameLabel := self newLabel label: 'name:'.
	nameTextInput := self newTextInput autoAccept: true.

	surnameLabel := self newLabel label: 'surname:'.
	surnameTextInput := self newTextInput autoAccept: true.
	surnameTextInput ghostText: 'empty'.

	number1Label := self newLabel label: 'number 1:'.
	number1Input := self newTextInput  autoAccept: true..

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
	dateInput := self instantiate: DatePresenter.

	genderLabel := self newLabel label: 'gender:'.
	genderGroup := self instantiate: RadioButtonGroupPresenter .
	genderGroup
		addRadioButton: (RadioButtonPresenter new label: 'male');
		addRadioButton: (RadioButtonPresenter new label: 'female').
	
	itemsLabel := self newLabel label: 'items:'.
	itemsInput := self newList.
	itemsInput items: (1 to: 5).

	submitButton := self newButton label: 'Submit'.
	restoreButton := self newButton label: 'Restore'.
	
	self focusOrder 
		add: nameTextInput;
		add: surnameTextInput;
		add: number1Input;
		add: number2Input;
		add: scaleInput;
		add: passwordInput;
		add: checkboxInput;
		add: colorInput.
		