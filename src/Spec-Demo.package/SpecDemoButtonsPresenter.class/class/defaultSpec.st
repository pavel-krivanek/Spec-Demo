specs
defaultSpec

	<spec: #default>

	| fontWidth labelsWidth rowHeight checkboxWidth buttonHeight |
	fontWidth := (StandardFonts defaultFont widthOfString: 'M').
	labelsWidth := fontWidth * 8.
	rowHeight := self inputTextHeight.
	buttonHeight := rowHeight*1.3.
	
	^ SpecLayout composed
		newColumn: [ :col | 

		col newRow: [ :row | 
				row add: #buttonNormal.
				row add: #buttonDisabled.
				row add: #buttonWithIcon.
				row add: #buttonHighlighted.
				 ] height: buttonHeight.
			
		col newRow: [ :row | 
				row add: #buttonWithColor.
				row add: #buttonWithMenu.
				row add: #buttonWithShortcut.
				row add: #buttonWithHelp.
				 ] 	height: buttonHeight.


		"fill the rest of the space"
		col newRow: [ :row |  ] ]; 
		yourself.	