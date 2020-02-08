running
getNeighboursFromLocation: location robot: robot

	^location fourNeighbors
		collect: [ :point | robot map cellAt: (robot map normalizePoint: point) ]