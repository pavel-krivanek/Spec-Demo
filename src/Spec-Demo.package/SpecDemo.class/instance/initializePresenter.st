initialization
initializePresenter

	list setSelectedItem: self selectedPage.
	
	list whenSelectedItemChanged: [ :newPageClass | 
		newPageClass = self selectedPage
			ifFalse: [
				self selectedPage: newPageClass. 
				page := self instantiate: newPageClass.
				
				self needRebuild: false.
				self buildWithSpec.
				list setSelectedItem: self selectedPage ]].