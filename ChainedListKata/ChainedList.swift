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
    
    func show() {
        var current = first
        if current != nil {
            print("                      ")
            print("**********************")
            print("**** Chained List ****")
            print(current!.value)
            while let next = current!.next {
                current = next
                print(next.value)
            }
            print("**********************")
            print("**********************")
            print("                      ")
        }
    }
    
    func size() -> Int {
        var current = first
        var count = 0
        
        if current != nil {
            count = 1
            while let next = current!.next {
                current = next
                count += 1
            }
        }
       
        return count
    }
    
    func details() {
        show()
        print("Size => \(size())")
    }
    
    func append(_ value: Int) {
        var current = first
        if current != nil  {
            while let nextNode = current!.next {
                current = nextNode
            }
            current!.next = Node(value: value)
        } else {
            first = Node(value: value)
        }
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
}
