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
    
    /// Remove node from the chained list.
    ///
    /// - Parameter value: value to remove.
    func remove(_ value: Int) {
        guard let current = first else { return }
        
        var currentNode = current
        var previousNode = current
        
        if currentNode.value == value {
            first = nil
            if currentNode.next != nil {
                first = currentNode.next
            }
        }
        
        while let nextNode = currentNode.next {
            previousNode = currentNode
            currentNode = nextNode
            
            if currentNode.value == value {
                previousNode.next = nil
                if currentNode.next != nil {
                    previousNode.next = currentNode.next
                }
            }
        }
    }
    
    /// Remove all nodes.
    func removeAll() {
        first = nil
    }
    
    /// Get node at index.
    ///
    /// - Parameter index: index.
    /// - Returns: node.
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
    
    /// Insert node at index.
    ///
    /// - Parameters:
    ///   - index: index.
    ///   - value: value to add.
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
    
    func reverse() -> Node? {
        var nextNode = first?.next
        var prevNode = first
        var currentNode = first
        
        while nextNode != nil {
            currentNode?.next = prevNode
            prevNode = currentNode
            currentNode = nextNode
            nextNode =  currentNode?.next
        }
        
        currentNode?.next = prevNode
        
        return currentNode
    }
}
