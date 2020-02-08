running
getForwardNeighboursFromLocation: location robot: robot

	^location fourNeighbors
		reject: [ :point | point = robot location ]
		thenCollect: [ :point | robot map cellAt: (robot map normalizePoint: point) ]