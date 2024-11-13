"
Class NormalDie represents a normal die which has equi proportional values from 1 to its max face number:
e.g., 1, 2, 3, 4, 5, 6.
"
Class {
	#name : 'NormalDie',
	#superclass : 'Die',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'initialization' }
NormalDie >> initialize [

	super initialize.
	facesNumbers := #( 1 2 3 4 5 6 )

]
