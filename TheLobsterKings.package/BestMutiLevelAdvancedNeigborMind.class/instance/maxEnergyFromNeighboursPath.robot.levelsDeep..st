running
maxEnergyFromNeighboursPath: cell robot: robot levelsDeep: aNumber

	| neighbourCells energies |

	aNumber < 1 ifTrue: [ ^cell energy ].

	neighbourCells := self getNeighboursFromLocation: cell location robot: robot.
	aNumber = 1 
		ifTrue: [  
			^(self positiveEnergy: cell energy) + (self positiveEnergy: (neighbourCells max: [ :eachCell| eachCell energy]))
		].
	energies := 
		neighbourCells 
			collect: [ :neighbourCell| (self positiveEnergy: neighbourCell energy) + (self positiveEnergy: (self maxEnergyFromNeighboursPath: neighbourCell robot: robot levelsDeep: aNumber -1) )].
	^cell energy + energies max
	