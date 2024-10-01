Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'MyDice',
	#package : 'MyDice'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: aNumber [
	"Create and initialize a new die with aNumber faces."
	^ self new faces: aNumber; yourself


]

{ #category : 'accessing' }
Die >> faces [
	"return the number of faces an instance of Die has."

	^ faces
]

{ #category : 'accessing' }
Die >> faces: aNumber [
	faces := aNumber

]

{ #category : 'initialization' }
Die >> initialize [
	"sets the default number of faces to 6."
	
	faces := 6
]

{ #category : 'printing' }
Die >> printOn: aStream [
	
	super printOn: aStream.
	aStream nextPutAll: ' ('.
	aStream print: faces.
	aStream nextPutAll: ')'

]

{ #category : 'initialization' }
Die >> roll [
	"draws randomly a number between one and faces."
	
	^ faces atRandom

]
