Class {
	#name : #FamixTest1SourcedEntity,
	#superclass : #FamixTest1Entity,
	#traits : 'FamixTSourceEntity + FamixTWithFiles + FamixTWithSourceLanguages',
	#classTraits : 'FamixTSourceEntity classTrait + FamixTWithFiles classTrait + FamixTWithSourceLanguages classTrait',
	#category : #'Famix-Test1-Entities-Entities'
}

{ #category : #meta }
FamixTest1SourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #FamixTest1Entity>
	<package: #'Famix-Test1-Entities'>
	<generated>
	^self
]
