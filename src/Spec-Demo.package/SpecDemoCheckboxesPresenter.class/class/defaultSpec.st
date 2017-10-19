specs
defaultSpec

	<spec: #default>

	| fontWidth labelsWidth rowHeight buttonHeight |
	fontWidth := (StandardFonts defaultFont widthOfString: 'M').
	labelsWidth := fontWidth * 8.
	rowHeight := self inputTextHeight.
	buttonHeight := rowHeight*1.3.
	
	^ SpecLayout composed
		newColumn: [ :col | 

		col newRow: [ :row | 
				row add: #checkboxNormal.
				row add: #checkboxDisabled.
				row add: #checkboxWithColor.
				row add: #checkboxWithHelp.
				row add: #checkboxWithLabelOnLeft.
				 ] height: rowHeight.
			
		"col newRow: [ :row | 
				row add: #buttonWithColor.
				row add: #buttonWithMenu.
				row add: #buttonWithShortcut.
				row add: #buttonWithHelp.
				row add: #buttonWithDifferentFont.
				 ] 	height: buttonHeight."


		"fill the rest of the space"
		col newRow: [ :row |  ] ]; 
		yourself.	