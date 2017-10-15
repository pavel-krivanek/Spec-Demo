instance creation
on: aModel

	^ self basicNew 
		model: aModel;
		initialize;
		yourself.