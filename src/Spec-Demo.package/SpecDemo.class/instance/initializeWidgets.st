initialization
initializeWidgets

	menu := self mainMenu.
	menu applyTo: self.
	
	list := self newList.
	list 
		items: self model availablePages;
		displayBlock: [:item | item pageName].
	page := (self instantiate: self model pageClass).
	
	self focusOrder 
		add: list;
		add: page.
		