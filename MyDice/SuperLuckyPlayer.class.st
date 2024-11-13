"
Class SuperLuckyPlayer represents a player that will always have plus one to the
values of all the value of its dices. For example, rolling its dice returns 2,3,4
and the super lucky player will return 3,4,5 i.e. 12.
"
Class {
	#name : 'SuperLuckyPlayer',
	#superclass : 'Player',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'as yet unclassified' }
SuperLuckyPlayer >> rollDieHandles: aDieHandle [
	"The player will always have plus one to the values of all
	 the value of its dices. For example, rolling its dice returns
	 2,3,4 and the super lucky player will return 3,4,5 i.e. 12."

	^ (super rollDieHandles: aDieHandle) + aDieHandle diceNumber

]
