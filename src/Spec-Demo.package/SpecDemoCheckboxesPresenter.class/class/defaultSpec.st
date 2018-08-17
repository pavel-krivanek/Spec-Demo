specs
defaultSpec

	<spec: #default>

	| fontWidth rowHeight |
	fontWidth := (StandardFonts defaultFont widthOfString: 'M').
	rowHeight := self inputTextHeight.
	
	^ SpecLayout composed
		newColumn: [ :col | 

		col newRow: [ :row | 
				row add: #checkboxNormal.
				row add: #checkboxDisabled.
				row add: #checkboxWithColor.
				row add: #checkboxWithHelp.
				row add: #checkboxWithLabelOnLeft.
				 ] height: rowHeight.
			
		"fill the rest of the space"
		col newRow: [ :row |  ] ]; 
		yourself.	