initialization
initializeWidgets

	buttonNormal := self newButton 
		label: 'normal'.
	buttonDisabled := self newButton 
		label: 'disabled';
		disable;
		yourself.
	buttonWithIcon := self newButton 
		label: 'with icon';
		icon: (self iconNamed: #pharo);
		yourself.		
	buttonHighlighted := self newButton 
		label: 'highlighted';
		state: true;
		yourself.	
	buttonWithColor := self newButton 
		label: 'red';
		color: Color red;
		yourself.
	buttonWithMenu := self newButton 
		label: 'with menu';
		menu: self subMenu;
		yourself.		
	buttonWithShortcut := self newButton 
		shortcut: $o meta;
		label: 'with shortcut';
		yourself.	
	buttonWithHelp := self newButton 
		help: 'This button shows help';
		label: 'with help';
		dragEnabled: true;
		yourself.	
			
	self focusOrder 
		add: buttonNormal;
		add: buttonDisabled;
		add: buttonWithIcon;
		add: buttonHighlighted;
		add: buttonWithColor;
		add: buttonWithMenu;
		add: buttonWithShortcut;
		add: buttonWithHelp.
																																																								