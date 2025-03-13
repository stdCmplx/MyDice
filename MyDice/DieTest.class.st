Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'tests' }
DieTest >> testCreationIsOk [
	self assert: (Die withFaces: 20) faces equals: 20

]

{ #category : 'tests' }
DieTest >> testInitializeOk [

	self assert: Die new faces equals: 6
]

{ #category : 'tests' }
DieTest >> testRoll [
	| d |
	d := Die new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]

]

{ #category : 'tests' }
DieTest >> testRollByPlayer [
	| d p1 p2 p3 p4 |
	d := Die new.
	p1 := Player new.
	p2 := CheaterPlayer new.
	p3 := LuckyPlayer new.
	p4 := SuperLuckyPlayer new.
	
	self assert: ((d rollByPlayer: p1) between: 1 and: 6).
	self assert: ((d rollByPlayer: p2) between: 1 and: 6).
	self assert: ((d rollByPlayer: p3) between: 1 and: 6).
	self assert: ((d rollByPlayer: p4) between: 1 and: 6)

]
