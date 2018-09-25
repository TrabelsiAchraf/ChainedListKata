//
//  ChainedList.swift
//  ChainedListKata
//
//  Created by Achraf TRABELSI on 25/09/2018.
//  Copyright © 2018 Achraf TRABELSI. All rights reserved.
//

import Foundation

class ChainedList {
    var first: Node?
    
    /// Return the chained list nodes.
    ///
    /// - Returns: nodes.
    func description() -> String {
        guard let current = first else { return "This chained don't contains any node!" }
        
        var currentNode = current
        var result = ""
        while currentNode.next != nil {
            currentNode = currentNode.next!
            result += " -> \(currentNode.value)"
        }
        
        return result
    }
    
    /// Get size of the chained list.
    ///
    /// - Returns: size.
    func size() -> Int {
        guard let current = first else { return 0 }
        
        var count = 0
        var currentNode = current
        
        while currentNode.next != nil {
            currentNode = currentNode.next!
            count += 1
        }
        
        return count
    }
    
    func details() {
        print(chainedList.description())
        print("Size => \(size())")
    }
    
    /// Append new node the current chained list.
    ///
    /// - Parameter value: new value.
    func append(_ value: Int) {
        if first == nil {
            first = Node(value: value)
        }
        
        var current = first
        
        while current!.next != nil {
            current = current!.next
        }
        
        current!.next = Node(value: value)
    }
    
    func remove(_ value: Int) {
        var current = first
        var previous = first
        
        if current != nil {
            if current!.value == value {
                if current!.next != nil {
                    first = current!.next
                } else {
                    first = nil
                }
            }
            
            while let nextNode = current!.next {
                previous = current
                current = nextNode
                
                if current!.value == value {
                    if current!.next != nil {
                        previous!.next = current!.next
                    } else {
                        previous!.next = nil
                    }
                }
            }
        }
    }
    
    func removeAll() {
        first = nil
    }
    
    func nodeAt(index: Int) -> Node? {
        if index >= 0 {
            var current = first
            var i = index
            
            while current != nil {
                if i == 0 {
                    return current
                }
                i -= 1
                current = current!.next
            }
        }
        return nil
    }
    
    func insertAt(index: Int, value: Int) {
        if index >= 0 && index <= size() {
            var current = first
            var previous = first
            var i = index
            
            while current != nil {
                if i == 0 {
                    let newNode = Node(value: value)
                    previous?.next = newNode
                    newNode.next = current
                    return
                }
        
                i -= 1
                previous = current
                current = current!.next
            }
        }
    }
}
