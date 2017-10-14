specs
labelTop3

	"<spec: #default>"

	| rowHeight |
	rowHeight := self inputTextHeight.

	^ SpecLayout composed
		newColumn: [ :column | 
			column newRow: [ :row |
				row add: #label 
				 ] height: rowHeight.
			column newRow: [ :row |
				row add: #subwidget 
				 ] height: rowHeight.
			];
		yourself