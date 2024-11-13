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
