"
Class LuckyPlayer represents a player that will always have plus one to its roll.
For example, rolling its dice returns, 2,3,4 and the lucky player will have 10
and not 9.
"
Class {
	#name : 'LuckyPlayer',
	#superclass : 'Player',
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'as yet unclassified' }
LuckyPlayer >> rollDieHandles: aDieHandle [
	"The player that will always have plus one to the values of
	 all the value of its dices. For example, rolling its dice
	 returns 2,3,4 and the super lucky player will return 3,4,5
	 i.e. 12."

	^ (super rollDieHandles: aDieHandle) + 1
]
