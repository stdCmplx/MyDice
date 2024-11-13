"
Class MiddleDie represents a middle die which has no 1 and 6 but two 3 and two 4: e.g. 2, 3, 3, 4, 4, 5.
"
Class {
	#name : 'MidlleDie',
	#superclass : 'Die',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'initialization' }
MidlleDie >> initialize [

	super initialize.
	facesNumbers := #( 2 3 3 4 4 5 )

]
