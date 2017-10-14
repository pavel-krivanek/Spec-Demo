specs
defaultSpec

	<spec: #default>

	| fontWidth listWidth |
	fontWidth := (StandardFonts defaultFont widthOfString: 'M').
	listWidth := fontWidth * 20.
	
	^ SpecLayout composed
		newColumn: [ :c | 
			c add: #menu height: self toolbarHeight.
			c newRow: [ :row | 
				row add: #list right: listWidth.
				row addSplitter.
				row add: #page] ];
		yourself
	
	