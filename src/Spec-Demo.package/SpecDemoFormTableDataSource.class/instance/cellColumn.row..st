accessing
cellColumn: column row: rowIndex 
	
	| item |
	
	item := self elementAt: rowIndex.

	column id = 'Name' ifTrue: [ ^ item key asStringMorph ].
	column id = 'Value' ifTrue: [ ^ item value asStringMorph ].


