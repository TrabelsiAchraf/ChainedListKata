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
chainedList.append(1)
chainedList.append(2)
chainedList.append(3)
chainedList.append(4)
chainedList.append(5)

// Remove value 3
chainedList.remove(1)
chainedList.details()

// Remove value 4
chainedList.remove(4)
chainedList.details()

// RemoveAll
chainedList.removeAll()
chainedList.details()
