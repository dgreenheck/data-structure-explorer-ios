//
//  StackTests.swift
//  DataStructureExplorerTests
//
//  Created by Daniel Greenheck on 10/31/19.
//  Copyright © 2019 Daniel Greenheck. All rights reserved.
//

import XCTest

class StackTests: XCTestCase {

    private var uut: Stack<Int> = Stack()
    
    override func setUp() {
        uut = .init()
    }
    
    
    // ----------------- push() ------------------- //
    
    func test_push_ontoEmptyStack() {
        // When
        uut.push(5)
        // Then
        XCTAssertTrue(uut.peek() == 5)
    }
    
    func test_push_multipleItems() {
        // Given
        uut.push(1)
        uut.push(2)
        // When
        uut.push(3)
        // Then
        XCTAssertTrue(uut.peek() == 3)
        XCTAssertTrue(uut.count == 3)
    }
    
    
    // ----------------- pop() ------------------- //
    
    func test_pop_fromEmptyStack() {
        // When
        let value: Int? = uut.pop()
        // Then
        XCTAssertNil(value)
        XCTAssertTrue(uut.isEmpty)
    }
    
    func test_pop_singleItem() {
        // Given
        uut.push(5)
        // When
        let value: Int? = uut.pop()
        // Then
        XCTAssertTrue(value == 5)
        XCTAssertNil(uut.peek())
        XCTAssertTrue(uut.isEmpty)
    }
    
    func test_pop_multipleItems() {
        // Given
        uut.push(1)
        uut.push(2)
        uut.push(3)
        // When
        let firstValue: Int? = uut.pop()
        let secondValue: Int? = uut.pop()
        let thirdValue: Int? = uut.pop()
        // Then
        XCTAssertTrue(firstValue == 3)
        XCTAssertTrue(secondValue == 2)
        XCTAssertTrue(thirdValue == 1)
        XCTAssertNil(uut.peek())
        XCTAssertTrue(uut.isEmpty)
    }
    
    
    // ----------------- peek() ------------------- //
    
    func test_peek_onEmptyStack() {
        // Then
        XCTAssertNil(uut.peek())
        XCTAssertTrue(uut.isEmpty)
    }
    
    func test_peek_onNonEmptyStack() {
        // Given
        uut.push(5)
        // Then
        XCTAssertTrue(uut.peek() == 5)
        XCTAssertTrue(uut.count == 1)
    }
    
    
    // ----------------- isEmpty() ------------------- //
    
    func test_isEmpty_emptyStack() {
        // Then
        XCTAssertTrue(uut.isEmpty)
    }
    
    func test_isEmpty_nonEmptyStack() {
        // Given
        uut.push(0)
        // Then
        XCTAssertFalse(uut.isEmpty)
    }
}
