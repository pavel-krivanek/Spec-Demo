adding
addColumnsTo: aTable

	aTable
		addColumn: (FTColumn new 
			id: 'Name';
			width: 110;
			yourself);
		addColumn: (FTColumn new 
			id: 'Value';
			yourself)		

