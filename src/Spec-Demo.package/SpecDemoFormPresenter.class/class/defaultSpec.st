specs
defaultSpec

	<spec: #default>

	| fontWidth formWidth |
	fontWidth := (StandardFonts defaultFont widthOfString: 'M').
	formWidth := fontWidth * 35.
	
	^ SpecLayout composed
		newRow: [ :row | 
			row add: #form right: formWidth.
			row add: #table];
		yourself.	