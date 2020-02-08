running
getDirectionToMoveRobot: robot toNeighbor: bestNeighborCell
	| movement |
	movement := robot wrappedVectorTo: bestNeighborCell location.
	"set the direction based on movement value"
	^self getDirectionForMovement: movement