initialization
commentFor: aClass

	^ String streamContents: [ :s |
		s nextPutAll: aClass name; cr.
		s nextPutAll: '--------------------------------------------'; cr.
		s cr.
		s nextPutAll: aClass comment ]
		