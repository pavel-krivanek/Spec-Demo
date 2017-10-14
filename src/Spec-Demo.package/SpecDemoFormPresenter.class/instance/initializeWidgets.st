accessing
initializeWidgets

	| tablePresenter |

	form := (self instantiate: SpecDemoLabeledContainer)
		label: 'form';
		subwidget: (self instantiate:  SpecDemoStandaloneFormPresenter).
	table := (self instantiate: SpecDemoLabeledContainer)
		label: 'result';
		subwidget: (tablePresenter := self newList).
	
	
	tablePresenter numberOfColumns: 2 withWidths: #(250 250).
	
	self focusOrder 
		add: form;
		add: table.
		