initialization
exampleTab
	| tab |
	tab := self newTab.
	tab
		label: 'Example';
		icon: (tab iconNamed: #openIcon);
		model: (self instantiate: SpecDemoFormPresenter).
	^ tab