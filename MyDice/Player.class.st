Class {
	#name : 'Player',
	#superclass : 'Object',
	#instVars : [
		'resultsOfHandle'
	],
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'as yet unclassified' }
Player >> handleResults [
	^ self handleResults.
]

{ #category : 'accessing' }
Player >> results [
	^ resultsOfHandle
]

{ #category : 'as yet unclassified' }
Player >> rollDieHandles: aDieHandle [
	"This method must collect the results of rolling each
	 dice of the handle and sum them."
	
	| handleRoll |
	handleRoll := aDieHandle rollByPlayer: self.
	resultsOfHandle := aDieHandle results.
	^ handleRoll

]
