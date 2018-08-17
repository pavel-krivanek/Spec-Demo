initialization
commentTab
	| tab commentInput|
	tab := self newTab.
	tab
		label: 'Comment';
		icon: (tab iconNamed: #helpIcon);
		model: (commentInput := self newText).
		
	commentInput text: (self commentFor: self pageClass).
	^ tab