running
getForwardNeighbors: robot
"Get neighbors but don't look back"

	| oppositeDirection |
	oppositeDirection := self oppositeLastDirection.
	^ robot fourNeighbors
		select: [ :neighbour | 
			| theMovement |
			theMovement := robot wrappedVectorTo: neighbour location.
			oppositeDirection ~= (self getDirectionForMovement: theMovement)]