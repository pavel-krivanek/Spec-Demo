specs
owner: anObject

	^ self basicNew 
		model: anObject model;
		workingModel: anObject model copy;
		initialize;
		owner: anObject;
		yourself