Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice',
		'maxHandle',
		'resultsOfHandle'
	],
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'initialization' }
DieHandle >> + aDieHandle [
	"The method + creates a new handle then adds the dice of
	 the receiver to it, and then one of the handles is passed
	 as an argument to the message. Finally, we return it."

	| handle |
	handle := self class new.
	handle dice
		addAll: dice;
		addAll: aDieHandle dice.
	^ handle

]

{ #category : 'initialization' }
DieHandle >> addDie: aDie [
	"add a die to the list of dice of the handle."

	dice add: aDie

]

{ #category : 'initialization' }
DieHandle >> dice [
	^ dice
]

{ #category : 'initialization' }
DieHandle >> diceNumber [
	"return the size of the dice collection."

	^ dice size

]

{ #category : 'initialization' }
DieHandle >> initialize [
	"initialize DieHandle class so that its instance variable
	 dice contains an instance of OrderedCollection."

	dice := OrderedCollection new

]

{ #category : 'accessing' }
DieHandle >> maxHandle [
	^ maxHandle
]

{ #category : 'accessing' }
DieHandle >> results [
	^ resultsOfHandle

]

{ #category : 'initialization' }
DieHandle >> roll [
	"This method must collect the results of rolling each
	 dice of the handle and sum them."

	| sum number |
	sum := 0.
	maxHandle := 0.
	resultsOfHandle := OrderedCollection new.
	dice do: [ :each |
		number := each roll.
		resultsOfHandle add: number.
		maxHandle := maxHandle max: number.
		sum := sum + number ].
	^ sum
]

{ #category : 'initialization' }
DieHandle >> rollByPlayer: aPlayer [ 

	| sum number |
	sum := 0.
	maxHandle := 0.
	resultsOfHandle := OrderedCollection new.
	dice do: [ :each |
		number := each rollByPlayer: aPlayer.
		resultsOfHandle add: number.
		maxHandle := maxHandle max: number.
		sum := sum + number ].
	^ sum
]
