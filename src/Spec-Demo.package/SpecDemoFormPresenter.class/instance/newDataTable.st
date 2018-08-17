accessing
newDataTable

	| aTable tableDataSource |
	aTable := FTTableMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		asSpecAdapter.

	tableDataSource := SpecDemoFormTableDataSource for: self model.
		
	aTable widget 
		beResizable.
	tableDataSource addColumnsTo: aTable widget.
	aTable widget dataSource: tableDataSource.

	^ aTable
		