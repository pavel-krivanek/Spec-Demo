accessing
modelChanged

	| aModel |
	aModel := self model.
	table subwidget items: { 
		aModel name.
		aModel surname.
		aModel number1.
		aModel number2 };
		displayBlock: [:item | item asString].