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
