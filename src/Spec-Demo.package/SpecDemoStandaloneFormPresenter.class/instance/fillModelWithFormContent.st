model updates
fillModelWithFormContent

	self workingModel
		name: self nameTextInput text;
		surname: self surnameTextInput text;
		number1: number1Input text asNumber;
		number2: (NumberParser parse: number2Input text readStream onError: [0]);
		scale: self scaleInput value;
		password: self passwordInput text;
		rememberMe: self checkboxInput state;
		date: self dateInput date.

	 self workingModel gender: (genderButtons detect: [:each | each value = genderGroup currentActivated]) key.
	