specs
labelTop

	<spec: #default>

	| rowHeight |
	rowHeight := self inputTextHeight.

	^ SpecLayout composed
		newColumn: [ :column | 
			column
				add: #label origin: 0@0 corner: 1@0 offsetOrigin: 0@0 offsetCorner: 0@rowHeight;
				add: #subwidget origin: 0@0 corner: 1@1];
		yourself