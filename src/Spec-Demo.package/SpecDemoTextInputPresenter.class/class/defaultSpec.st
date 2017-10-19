specs
defaultSpec

	<spec: #default>

	| fontWidth labelsWidth rowHeight checkboxWidth |
	fontWidth := (StandardFonts defaultFont widthOfString: 'M').
	labelsWidth := fontWidth * 8.
	rowHeight := self inputTextHeight.
	checkboxWidth := fontWidth * 2.
	
	^ SpecLayout composed
		newColumn: [ :col | 

			col newRow: [ :row | 
				row add: #labelNormal right: labelsWidth.
				row add: #fieldNormal ]
			height: rowHeight.
		
			col newRow: [ :row | 
				row add: #labelDisabled right: labelsWidth.
				row add: #fieldDisabled ]
			height: rowHeight.

			col newRow: [ :row | 
				row add: #labelGhostText right: labelsWidth.
				row add: #fieldGhostText ]
			height: rowHeight.

			col newRow: [ :row | 
				row add: #labelEncrypted right: labelsWidth.
				row add: #fieldEncrypted ]
			height: rowHeight.

		"fill the rest of the space"
		col newRow: [ :row |  ].
			
			 ] 
			
		yourself.	