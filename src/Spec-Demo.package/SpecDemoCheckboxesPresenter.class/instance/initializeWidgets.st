initialization
initializeWidgets

	checkboxNormal  := self newCheckBox
		label: 'normal'.
	checkboxDisabled := self newCheckBox 
		label: 'disabled';
		disable;
		yourself.
	checkboxWithColor := self newCheckBox 
		label: 'red';
		color: Color red;
		yourself.
	checkboxWithHelp := self newCheckBox 
		label: 'with help';
		help: 'this is checkbox with help';
		yourself.
	checkboxWithLabelOnLeft := self newCheckBox 
		label: 'left';
		yourself.
		
	self whenBuiltDo: [ 
		checkboxWithLabelOnLeft labelOnLeft.].		
																						