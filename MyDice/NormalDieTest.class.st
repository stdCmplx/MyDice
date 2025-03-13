Class {
	#name : 'NormalDieTest',
	#superclass : 'TestCase',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'tests' }
NormalDieTest >> testInitializeOk [

	self assert: NormalDie new facesNumbers equals: #(1 2 3 4 5 6 )
]

{ #category : 'tests' }
NormalDieTest >> testRoll [
	| d |
	d := NormalDie new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]

]

{ #category : 'tests' }
NormalDieTest >> testRollByPlayer [
	| d p1 p2 p3 p4 |
	d := NormalDie new.
	p1 := Player new.
	p2 := CheaterPlayer new.
	p3 := LuckyPlayer new.
	p4 := SuperLuckyPlayer new.
	
	self assert: ((d rollByPlayer: p1) between: 1 and: 6).
	self assert: ((d rollByPlayer: p2) between: 1 and: 6).
	self assert: ((d rollByPlayer: p3) between: 1 and: 6).
	self assert: ((d rollByPlayer: p4) between: 1 and: 6)

]
