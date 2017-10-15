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
	"
	tablePresenter whenBuiltDo: [:ann|
		| ftTable |
		ftTable := ann widget.
		ftTable columns: #().
		ftTable addColumn: ((FTColumn id: 'Name') width: 100).
		ftTable addColumn: ((FTColumn id: 'Protocol') width: 100).
		ftTable dataSource: (FTExampleMethodTableDataSource for: Morph).
		ftTable refresh.
		]."
	
	self focusOrder 
		add: form;
		add: table.
		