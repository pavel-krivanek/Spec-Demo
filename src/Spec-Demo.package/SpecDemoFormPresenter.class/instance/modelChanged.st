accessing
modelChanged

	| aModel |
	aModel := self model.
	table widget dataSource model: self model.
	table widget refresh.