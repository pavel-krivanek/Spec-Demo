initialization
initializeWidgets

	tabManager := self newTabManager.
	"tabManager whenTabSelected: [ self updateTitle ]."
	tabManager
		addTab: self exampleTab;
		addTab: self commentTab.