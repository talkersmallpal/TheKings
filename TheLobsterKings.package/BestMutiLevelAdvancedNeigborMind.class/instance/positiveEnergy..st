running
positiveEnergy: energy

	^energy<0
	ifTrue: [ 50 ]
	ifFalse: [ energy ]
		