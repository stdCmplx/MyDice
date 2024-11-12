Class {
	#name : 'PlayerTest',
	#superclass : 'TestCase',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'tests' }
PlayerTest >> testRollDieHandles [
	| player d1 d2 d3 handle sum_min sum_max sum |
	d1 := Die withFaces: 6.
	d2 := Die withFaces: 10.
	d3 := Die withFaces: 20.
	
	player := Player new.
	handle := DieHandle new addDie: d1; addDie: d2; addDie: d3; yourself.
	sum_min := handle diceNumber.
	sum_max := 0.
	(handle dice) do: [ :each | sum_max := sum_max + each faces ].
	sum := player rollDieHandles: handle.
	self assert: (sum between: sum_min and: sum_max)

]
