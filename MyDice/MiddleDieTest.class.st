Class {
	#name : 'MiddleDieTest',
	#superclass : 'TestCase',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'tests' }
MiddleDieTest >> testInitializeOk [

	self assert: MiddleDie new facesNumbers equals: #( 2 3 3 4 4 5 )
]

{ #category : 'tests' }
MiddleDieTest >> testRoll [
	| d |
	d := MiddleDie new.
	10 timesRepeat: [ self assert: (d roll between: 2 and: 5) ]

]

{ #category : 'tests' }
MiddleDieTest >> testRollByPlayer [
	| d p1 p2 p3 p4 |
	d := MiddleDie new.
	p1 := Player new.
	p2 := CheaterPlayer new.
	p3 := LuckyPlayer new.
	p4 := SuperLuckyPlayer new.
	
	self assert: (d rollByPlayer: p1) isNil.
	self assert: (d rollByPlayer: p2) isNil.
	self assert: ((d rollByPlayer: p3) between: 2 and: 5).
	self assert: ((d rollByPlayer: p4) between: 2 and: 5)

]
