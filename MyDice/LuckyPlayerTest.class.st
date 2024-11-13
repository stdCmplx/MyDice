Class {
	#name : 'LuckyPlayerTest',
	#superclass : 'TestCase',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'tests' }
LuckyPlayerTest >> testRollDieHandles [

	| player d1 d2 d3 handle sum_results sum |

	player := LuckyPlayer new.
	d1 := Die withFaces: 6.
	d2 := Die withFaces: 10.
	d3 := Die withFaces: 20.
	handle := DieHandle new
		          addDie: d1;
		          addDie: d2;
		          addDie: d3;
		          yourself.

	sum := player rollDieHandles: handle.
	sum_results := 0.
	(player results) do: [ :each |
		sum_results := sum_results + each ].
	self assert: sum equals: sum_results + 1

]
