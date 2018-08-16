accessing
modelChanged

	| aModel |
	aModel := self model.
	table subwidget items: { 
		aModel name.
		aModel surname.
		aModel number1.
		aModel number2.
		aModel scale.
		aModel password.
		aModel rememberMe.
		aModel color.
		aModel date.
		aModel gender.
		aModel selectedItems };
		displayBlock: [:item | item asString].