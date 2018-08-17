initialization
initializeWidgets

	nameLabel := self newLabel label: 'name:'.
	nameTextInput := self newTextInput autoAccept: true.

	surnameLabel := self newLabel label: 'surname:'.
	surnameTextInput := self newTextInput autoAccept: true.
	surnameTextInput ghostText: 'empty'.

	number1Label := self newLabel label: 'number 1:'.
	number1Input := self newTextInput autoAccept: true.

	number2Label := self newLabel label: 'number 2:'.
	number2Input := self newTextInput autoAccept: true.

	scaleLabel := self newLabel label: 'scale:'.
	scaleInput := self newSlider.

	passwordLabel := self newLabel label: 'password:'.
	passwordInput := self newTextInput encrypted: true; autoAccept: true..

	checkboxLabel := self newLabel label: 'remember me'.
	checkboxInput := self newCheckBox state: true.

	dateLabel := self newLabel label: 'date:'.
	dateInput := self instantiate: DatePresenter.
	dateInput displayBlock: [:item | item yyyymmdd ].
	
	genderButtons := self model genders collect: [ :each |
		each -> (RadioButtonPresenter new label: each asString) ].  

	genderLabel := self newLabel label: 'gender:'.
	genderGroup := self instantiate: RadioButtonGroupPresenter .
	genderButtons do: [ :each | genderGroup addRadioButton: each value].
	
	itemsLabel := self newLabel label: 'items:'.
	itemsInput := self newList.
	itemsInput beMultipleSelection.
	itemsInput items: self model items.

	submitButton := self newButton label: 'Submit'.
	restoreButton := self newButton label: 'Restore'.
	
	self focusOrder 
		add: nameTextInput;
		add: surnameTextInput;
		add: number1Input;
		add: number2Input;
		add: scaleInput;
		add: passwordInput;
		add: checkboxInput.
		