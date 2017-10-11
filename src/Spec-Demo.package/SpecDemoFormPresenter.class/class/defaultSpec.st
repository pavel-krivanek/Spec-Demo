specs
defaultSpec

	<spec: #default>

	| labelsWidth rowHeight |
	labelsWidth := (StandardFonts defaultFont widthOfString: 'M') * 10.
	rowHeight := self inputTextHeight.
	
	^ SpecLayout composed
		newColumn: [ :col | 
			col newRow: [ :row | 
				row add: #nameLabel right: labelsWidth.
				row add: #nameTextInput ]
			height: rowHeight.
		
			col newRow: [ :row | 
				row add: #surnameLabel right: labelsWidth..
				row add: #surnameTextInput ]
			height: rowHeight.

			col newRow: [ :row | 
				row add: #number1Label right: labelsWidth..
				row add: #number1Input ]
			height: rowHeight.

		col newRow: [ :row | 
				row add: #number2Label right: labelsWidth..
				row add: #number2Input ]
			height: rowHeight.

		col newRow: [ :row | 
				row add: #scaleLabel right: labelsWidth..
				row add: #scaleInput ]
			height: rowHeight.

		col newRow: [ :row | 
				row add: #passwordLabel right: labelsWidth..
				row add: #passwordInput ]
			height: rowHeight.


		col newRow: [ :row |  ].
			
			 ] 
			
		yourself.	