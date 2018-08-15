initialization
fillModelWithFormContent

	workingModel name: self nameTextInput text.
	workingModel surname: self surnameTextInput text.
	workingModel number1: number1Input text asNumber.
	workingModel number2: (NumberParser parse: number2Input text readStream onError: [0]).
	workingModel scale: self scaleInput value.
	workingModel password: self passwordInput text.

	