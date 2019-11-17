running
run: aNumber
	| product |
	product := 1.
	1 to: aNumber do: [ :i | product := product * i ].
	^ product