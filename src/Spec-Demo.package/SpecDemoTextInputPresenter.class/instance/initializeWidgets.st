initialization
initializeWidgets

	labelNormal := self newLabel label: 'normal:'.
	fieldNormal := self newTextInput.

	labelDisabled := self newLabel label: 'disabled:'.
	fieldDisabled := self newTextInput enabled: false.

	labelGhostText := self newLabel label: 'ghost text:'.
	fieldGhostText := self newTextInput ghostText: 'ghost text'.
	
	labelEncrypted := self newLabel label: 'encrypted:'.
	fieldEncrypted := self newTextInput text: 'password'; encrypted: true.
