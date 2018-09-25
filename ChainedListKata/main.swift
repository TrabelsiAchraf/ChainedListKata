//
//  main.swift
//  ChainedListKata
//
//  Created by Achraf TRABELSI on 25/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import Foundation

let chainedList = ChainedList()

// Append values
print("Append values")
chainedList.append(1)
chainedList.append(2)
chainedList.append(3)
chainedList.append(4)
chainedList.append(5)
chainedList.details()

// Get node at index 2, RQ : index start from 0
print("Get node at index 2")
if let node = chainedList.nodeAt(index: 2) {
    print("Node at position 2 : \(node.value)")
}

// Add node at index, RQ : index start from 0
print("Add node with value 9 at index 3")
chainedList.insertAt(index: 3, value: 9)
chainedList.details()

// Remove value 3
print("Remove value 3")
chainedList.remove(1)
chainedList.details()

// Remove value 4
print("Remove value 4")
chainedList.remove(4)
chainedList.details()

// RemoveAll
print("RemoveAll")
chainedList.removeAll()
chainedList.details()
