Class {
	#name : 'CheaterPlayerTest',
	#superclass : 'TestCase',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'tests' }
CheaterPlayerTest >> testRollDieHandles [

	| player d1 d2 d3 handle number_max sum |

	player := CheaterPlayer new.
	d1 := Die withFaces: 6.
	d2 := Die withFaces: 10.
	d3 := Die withFaces: 20.
	handle := DieHandle new
		          addDie: d1;
		          addDie: d2;
		          addDie: d3;
		          yourself.

	sum := player rollDieHandles: handle.
	number_max := 0.
	(player results) do: [ :each | number_max := number_max max: each ].
	self assert: sum equals: handle diceNumber * number_max

]
