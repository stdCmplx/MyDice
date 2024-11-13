"
Class CheaterPlayer represents a cheater player, that will take the max of value of its die handle
value and multiply by the number of dices. For example if he gets 2,3,4, after rolling its dice,
he will say that he hot 4,4,4.
"
Class {
	#name : 'CheaterPlayer',
	#superclass : 'Player',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'as yet unclassified' }
CheaterPlayer >> rollDieHandles: aDieHandle [
	"Take the max of value of its die handle value and multiply by
	 the number of dices.
	 For example if he gets 2,3,4, after rolling its dice, he will
	 say that he hot 4,4,4."
	
	super rollDieHandles: aDieHandle.
	^ (aDieHandle maxHandle) * aDieHandle diceNumber

]
