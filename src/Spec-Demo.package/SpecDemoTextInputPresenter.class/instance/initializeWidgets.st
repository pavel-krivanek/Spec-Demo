initialization
initializeWidgets

	labelNormal := self newLabel label: 'normal:'.
	fieldNormal := self newTextInput.
	labelDisabled := self newLabel label: 'disabled:'.
	fieldDisabled := self newTextInput enabled: false.

	labelGhostText := self newLabel label: 'ghost text:'.
	fieldGhostText := self newTextInput ghostText: 'ghost text'.
