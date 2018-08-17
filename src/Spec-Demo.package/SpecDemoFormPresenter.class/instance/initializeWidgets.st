accessing
initializeWidgets

	form := (self instantiate: SpecDemoLabeledContainer)
		label: 'form';
		subwidget: (self instantiate:  SpecDemoStandaloneFormPresenter on: self announcingObject).
	resultPane := (self instantiate: SpecDemoLabeledContainer)
		label: 'result';
		subwidget: (table := self newDataTable).

	self focusOrder 
		add: form;
		add: table.
		