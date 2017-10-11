initialization
initializeWidgets

	nameLabel := self newLabel label: 'name:'.
	nameTextInput := self newTextInput.

	surnameLabel := self newLabel label: 'surname:'.
	surnameTextInput := self newTextInput.
	surnameTextInput ghostText: 'empty'.
	
	self focusOrder 
		add: nameTextInput;
		add: surnameTextInput.
		