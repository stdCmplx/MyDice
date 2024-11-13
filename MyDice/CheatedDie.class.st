"
Class CheatedDie represents a cheated die which has no 1 and 2 but 3 6 values: e.g. 3, 4, 5, 6, 6, 6.
"
Class {
	#name : 'CheatedDie',
	#superclass : 'Die',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'initialization' }
CheatedDie >> initialize [

	super initialize.
	facesNumbers := #( 3 4 5 6 6 6 )

]
