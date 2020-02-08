running
maxEnergyFromNeighboursPath: cell robot: robot

	| energy |
	energy := self maxEnergyFromNeighboursPath: cell robot: robot levelsDeep: self scanningDepth.
	^energy