Class {
	#name : 'Player',
	#superclass : 'Object',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'as yet unclassified' }
Player >> rollDieHandles: aDieHandle [
	"This method must collect the results of rolling each
	 dice of the handle and sum them."

	^ aDieHandle roll
]
