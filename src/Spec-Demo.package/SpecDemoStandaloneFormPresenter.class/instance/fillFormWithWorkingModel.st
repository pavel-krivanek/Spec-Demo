model updates
fillFormWithWorkingModel

	| aModel |
	
	aModel := self workingModel.

	self nameTextInput text: aModel name.
	self surnameTextInput text: aModel surname.	
	self number1Input text: aModel number1 asString.
	self number2Input text: aModel number2 asString.
	self scaleInput value: aModel scale.
	self passwordInput text: aModel password.
	self checkboxInput state: aModel rememberMe.
	self dateInput date: aModel date.
	
	genderGroup default: (genderButtons detect: [:each | each key = aModel gender]) value.

	self workingModel items withIndexDo: [ :item :index |
		self itemsInput setSelectionStateFor: index at: (self workingModel selectedItems includes: item) ].
	self itemsInput changed: #listElementAt: