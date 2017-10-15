accessing
availablePages

	^ SpecDemoPage allSubclasses sort: [ :a :b | a priority <= b priority ]