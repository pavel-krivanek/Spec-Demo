initialization
initializeWidgets

	buttonNormal := self newButton 
		label: 'normal'.
	buttonDisabled := self newButton 
		label: 'disabled';
		icon: (self iconNamed: #pharo);
		disable;
		state: true;
		yourself.