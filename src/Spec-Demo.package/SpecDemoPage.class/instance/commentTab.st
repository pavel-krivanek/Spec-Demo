initialization
commentTab
	| tab |
	tab := self newTab.
	tab
		label: 'Comment';
		icon: (tab iconNamed: #helpIcon);
		model: (self newText).
	^ tab