//
//  BinaryTree.swift
//  Structures
//
//  Created by Michael Choe on 1/30/16.
//  Copyright © 2016 Strauss LLC. All rights reserved.
//
//
//  Copyright (c) 2016 Michael Choe
//  http://www.straussmade.com/
//  http://www.twitter.com/_mchoe
//  http://www.github.com/mchoe
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


import Foundation

public class BinarySearchTree<T where T:Comparable>: Tree<T>, ArrayLiteralConvertible {
    
    public var value: T?
    var leftTree: BinarySearchTree<T>?
    var rightTree: BinarySearchTree<T>?
    
    convenience init(data: T) {
        self.init()
        self.append(data)
    }
    
    required public init(arrayLiteral elements: T...) {
        super.init()
        for thisElement in elements {
            self.append(thisElement)
        }
    }
    
}

extension BinarySearchTree {
    
    public func append(node: T) {
        
        if node == self.value {
            return
        }
        
        // Check if Root
        if self.value == nil {
            self.value = node
            return
        }
        
        if node < self.value {
            if self.leftTree != nil {
                self.leftTree?.append(node)
            } else {
                let newLeftTree = BinarySearchTree(data: node)
                self.leftTree = newLeftTree
            }
        }
        
        if node > self.value {
            if self.rightTree != nil {
                self.rightTree?.append(node)
            } else {
                let newRightTree = BinarySearchTree(data: node)
                self.rightTree = newRightTree
            }
        }
    }
    
}

extension BinarySearchTree {
    
    public func find(searchValue: T) -> BinarySearchTree? {
        
        if self.value == searchValue {
            return self
        }
        
        if searchValue < self.value {
            return self.leftTree?.find(searchValue)
        } else {
            return self.rightTree?.find(searchValue)
        }
    }
    
}

extension BinarySearchTree {
    
    var isLeaf: Bool {
        if self.leftTree == nil && self.rightTree == nil {
            return true
        }
        return false
    }
    
    var subtrees: [BinarySearchTree]? {
        var returnArray = [BinarySearchTree]()
        if let leftTree = self.leftTree {
            returnArray.append(leftTree)
        }
        if let rightTree = self.rightTree {
            returnArray.append(rightTree)
        }
        if returnArray.count == 0 {
            return nil
        }
        return returnArray
    }
    
    
}

extension BinarySearchTree {
    
    public func nodesAtLevel(level: Int) -> [T]? {
        
        guard level >= 0 else {
            return nil
        }
        
        return nil
    }
    
}



