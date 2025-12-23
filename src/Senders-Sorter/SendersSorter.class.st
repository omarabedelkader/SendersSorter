"
I'm a class that sorts the completion list by the number of senders of each item.
It first obtains the raw list from NoSorter, then reorders it.
"
Class {
	#name : 'SendersSorter',
	#superclass : 'AnObsoleteCompletionSorter',
	#category : 'Senders-Sorter',
	#package : 'Senders-Sorter'
}

{ #category : 'description' }
SendersSorter class >> kind [
	^ 'senders'
]

{ #category : 'sorting' }
SendersSorter >> numberOfSendersOf: anEntry [

    "Count the number of senders for the given entry"
    ^ (SystemNavigation default allCallsOn: anEntry) size
]

{ #category : 'sorting' }
SendersSorter >> sortCompletionList: anOrderedCollection [

    | noSortedCollection |
    noSortedCollection := NoSorter new sortCompletionList: anOrderedCollection.
    ^ noSortedCollection sort: [ :a :b | 
        (self numberOfSendersOf: a contents) > (self numberOfSendersOf: b contents) ]
]
