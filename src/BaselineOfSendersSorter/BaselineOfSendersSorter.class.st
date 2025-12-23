Class {
	#name : 'BaselineOfSendersSorter',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSendersSorter',
	#package : 'BaselineOfSendersSorter'
}

{ #category : 'baselines' }
BaselineOfSendersSorter >> baseline: spec [

	<baseline>
	spec for: #common do: [
			spec package: 'Senders-Sorter'.
			spec package: 'Senders-Sorter-Tests' with: [ spec requires: #( 'Senders-Sorter' ) ]].
]
