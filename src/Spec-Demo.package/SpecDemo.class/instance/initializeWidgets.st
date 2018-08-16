initialization
initializeWidgets

	menu := self mainMenu.
	menu applyTo: self.
	
	selectedPage := self availablePages first.
	
	list := self newList.
	list 
		items: self availablePages;
		displayBlock: [:item | item pageName].

	page := (self instantiate: selectedPage).
	
	self focusOrder 
		add: list;
		add: page.
		