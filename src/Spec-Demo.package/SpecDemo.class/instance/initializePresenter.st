initialization
initializePresenter

	list whenSelectedItemChanged: [ :newPageClass |
		newPageClass = self model pageClass
			ifFalse: [
				self model pageClass: newPageClass. 
				page := self instantiate: newPageClass.
				page needRebuild: false.
				self needRebuild: false.
				self buildWithSpec
				]]