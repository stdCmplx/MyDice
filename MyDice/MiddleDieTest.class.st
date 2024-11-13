Class {
	#name : 'MiddleDieTest',
	#superclass : 'TestCase',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'tests' }
MiddleDieTest >> testInitializeOk [

	self assert: MidlleDie new facesNumbers equals: #( 2 3 3 4 4 5 )
]

{ #category : 'tests' }
MiddleDieTest >> testRoll [
	| d |
	d := MidlleDie new.
	10 timesRepeat: [ self assert: (d roll between: 2 and: 5) ]

]
