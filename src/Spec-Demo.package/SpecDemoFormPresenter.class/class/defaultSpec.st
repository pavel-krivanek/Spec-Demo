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

			 ] origin: 0@0 corner: 1@0 offsetOrigin: 0@0 offsetCorner: 0@(rowHeight*1.1*2);
			
		yourself.	