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
				row add: #nameLabel right: labelsWidth.
				row add: #nameTextInput ]
			height: rowHeight.
		
			col newRow: [ :row | 
				row add: #surnameLabel right: labelsWidth.
				row add: #surnameTextInput ]
			height: rowHeight.

			col newRow: [ :row | 
				row add: #number1Label right: labelsWidth..
				row add: #number1Input ]
			height: rowHeight.

		col newRow: [ :row | 
				row add: #number2Label right: labelsWidth.
				row add: #number2Input ]
			height: rowHeight.

		col newRow: [ :row | 
				row add: #scaleLabel right: labelsWidth.
				row add: #scaleInput ]
			height: rowHeight.

		col newRow: [ :row | 
				row add: #passwordLabel top: 0 bottom: rowHeight left: nil right: labelsWidth.
				row newColumn: [ :passwordColumn |
					passwordColumn newRow: [ :innerRow | 
						innerRow add: #passwordInput].
					passwordColumn newRow: [ :innerRow | 
						innerRow add: #checkboxInput right: checkboxWidth.
						innerRow add: #checkboxLabel ]]]
			height: rowHeight*2.

		col newRow: [ :row | 
				row add: #dateLabel right: labelsWidth.
				row add: #dateInput ]
			height: rowHeight.

	col newRow: [ :row | 
				row add: #genderLabel top: 0 bottom: rowHeight left: nil right: labelsWidth.
				row add: #genderGroup]
			height: rowHeight*2.

	col newRow: [ :row | 
				row add: #itemsLabel right: labelsWidth.
				row add: #itemsInput ]
			height: rowHeight*6.
	
	col newRow: [ :row | 
				row add: #submitButton.
				row add: #restoreButton ]
			height: rowHeight*1.3.

		"fill the rest of the space"
		col newRow: [ :row |  ] ];
			
		yourself.	