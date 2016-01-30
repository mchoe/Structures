//
//  BinaryTreeTests.swift
//  Structures
//
//  Created by Michael Choe on 1/30/16.
//  Copyright © 2016 Strauss LLC. All rights reserved.
//

import XCTest

class BinarySearchTreeTests: XCTestCase {
    
    func testAppendToRoot() {
        let testTree = BinarySearchTree<Int>()
        testTree.append(5)
        XCTAssertEqual(testTree.value, 5, "Not assigning value to root correctly")
    }
    
    func testIsLeaf() {
        let testTree = BinarySearchTree(data: 22)
        
        XCTAssertTrue(testTree.isLeaf, "A tree with one node is a leaf")
    }
    
    func testMinMaxValues() {
        
        let testTree: BinarySearchTree = [7, 2, 10, 6, 1, 22, 13]
        
        XCTAssertEqual(testTree.minValue, 1, "Minimum value should be 1")
        
        XCTAssertEqual(testTree.maxValue, 22, "Maximum value should be 22")
        
    }
    
}
