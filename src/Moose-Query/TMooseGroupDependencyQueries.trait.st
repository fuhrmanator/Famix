"
This trait provides a common, paradigm agnostic vocabulary to query dependencies of software entities stored in a MooseAbstractGroup.

For more informations: https://moosequery.ferlicot.fr/
"
Trait {
	#name : #TMooseGroupDependencyQueries,
	#category : #'Moose-Query-Traits'
}

{ #category : #querying }
TMooseGroupDependencyQueries >> queryAllIncoming [

	^ MooseIncomingQueryResult
		  on: self
		  withAll: (self entities flatCollect: [ :m | m queryAllIncoming ])
]

{ #category : #querying }
TMooseGroupDependencyQueries >> queryAllOutgoing [

	^ MooseOutgoingQueryResult
		  on: self
		  withAll: (self entities flatCollect: [ :m | m queryAllOutgoing ])
]

{ #category : #querying }
TMooseGroupDependencyQueries >> queryIncoming: aFamixClassAssociation [

	^ MooseIncomingQueryResult
		  on: self
		  withAll: (self entities flatCollect: [ :m | 
				   m queryIncoming: aFamixClassAssociation ])
]

{ #category : #querying }
TMooseGroupDependencyQueries >> queryLocalIncoming: aFamixClassAssociation [

	^ MooseIncomingQueryResult
		  on: self
		  withAll: (self entities flatCollect: [ :m | 
				   m queryLocalIncoming: aFamixClassAssociation ])
]

{ #category : #querying }
TMooseGroupDependencyQueries >> queryLocalOutgoing: aFamixClassAssociation [

	^ MooseOutgoingQueryResult
		  on: self
		  withAll: (self entities flatCollect: [ :m | 
				   m queryLocalOutgoing: aFamixClassAssociation ])
]

{ #category : #querying }
TMooseGroupDependencyQueries >> queryOutgoing: aFamixClassAssociation [

	^ MooseOutgoingQueryResult
		  on: self
		  withAll: (self entities flatCollect: [ :m | 
				   m queryOutgoing: aFamixClassAssociation ])
]
