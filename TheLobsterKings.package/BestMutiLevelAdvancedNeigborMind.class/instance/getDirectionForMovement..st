running
getDirectionForMovement: theMovement
	^ RobotDirection allDirections
		detect: [ :dir | dir movement = theMovement ]