running
determineDirectionForRobot: robot
	| bestEnergy bestNeighborCell |
	"Loop through a;; neighbor cells and remember the one which gives direction with bigest energy from the path of next number of cells"
	"figure out which movement needs to be taken so that robot moves from it's location to other location"
	"set the direction based on movement value"
	"remember calculated direction as last direction so we can use it in next step"
	bestEnergy := 0.
	(self getForwardNeighbors: robot)
		do: [ :neighborCell | 
			| maxEnergyFromNeighborsPath |
			maxEnergyFromNeighborsPath := self maxEnergyFromNeighboursPath: neighborCell robot: robot.
			maxEnergyFromNeighborsPath > bestEnergy
				ifTrue: [ 	
						bestEnergy := maxEnergyFromNeighborsPath.
						bestNeighborCell := neighborCell ] ].
	direction := self getDirectionToMoveRobot: robot toNeighbor: bestNeighborCell.
	lastDirection := direction