Class {
	#name : 'CheatedDieTest',
	#superclass : 'TestCase',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'tests' }
CheatedDieTest >> testInitializeOk [

	self assert: CheatedDie new facesNumbers equals: #( 3 4 5 6 6 6 )
]

{ #category : 'tests' }
CheatedDieTest >> testRoll [
	| d |
	d := CheatedDie new.
	10 timesRepeat: [ self assert: (d roll between: 3 and: 6) ]

]

{ #category : 'tests' }
CheatedDieTest >> testRollByPlayer [
	| d p1 p2 p3 p4 |
	d := CheatedDie new.
	p1 := Player new.
	p2 := CheaterPlayer new.
	p3 := LuckyPlayer new.
	p4 := SuperLuckyPlayer new.
	
	self assert: (d rollByPlayer: p1) isNil.
	self assert: ((d rollByPlayer: p2) between: 3 and: 6).
	self assert: (d rollByPlayer: p3) isNil.
	self assert: (d rollByPlayer: p4) isNil

]
