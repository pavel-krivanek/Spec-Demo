initialization
exampleTab
	| tab |
	tab := self newTab.
	tab
		label: 'Example';
		icon: (tab iconNamed: #smallPaint);
		model: (self instantiate: self pageClass).
	^ tab