"
FamixTNamespace represents a namespace from the source language. Namespaces have semantic meaning in the language so they influence the unique name of the entity.

A namespace denotes an entity that has meaning from a language point of view. For example, in C++, there exist a concept with the same name that has no other responsibility beside providing a lexical scope for the contained classes and funcions.

When an entity is placed inside a namespace, the fully qualified name (mooseName) is affected.
"
Trait {
	#name : #FamixTNamespace,
	#traits : '(FamixTNamedEntity + FamixTSourceEntity + TEntityMetaLevelDependency + TOODependencyQueries withPrecedenceOf: TOODependencyQueries)',
	#classTraits : '(FamixTNamedEntity classTrait + FamixTSourceEntity classTrait + TEntityMetaLevelDependency classTrait + TOODependencyQueries classTrait withPrecedenceOf: TOODependencyQueries classTrait)',
	#category : #'Famix-Traits-Named'
}

{ #category : #meta }
FamixTNamespace classSide >> annotation [

	<FMClass: #TNamespace super: #Object>
	<package: #'Famix-Traits'>
	<generated>
	^self
]

{ #category : #groups }
FamixTNamespace classSide >> annotationFamixNamespaceGroup [
	<generated>
	<mooseGroup>
	^ FamixNamespaceGroup
]

{ #category : #testing }
FamixTNamespace >> isNamespace [

	<generated>
	^ true
]
