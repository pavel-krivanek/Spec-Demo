initialization
initializePresenter

	list setSelectedItem: self model pageClass.
	
	list whenSelectedItemChanged: [ :newPageClass | 
		newPageClass = self model pageClass
			ifFalse: [
				self model pageClass: newPageClass. 
				page := self instantiate: newPageClass.
				"list setSelectedItem: self model pageClass."
				
				self needRebuild: false.
				self buildWithSpec.
				list setSelectedItem: self model pageClass.
				]].