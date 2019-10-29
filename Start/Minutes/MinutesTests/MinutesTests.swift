//
//  MinutesTests.swift
//  MinutesTests
//
//  Created by Krystyna Kruchkovska on 10/29/19.
//  Copyright © 2019 Microsoft. All rights reserved.
//

import XCTest
@testable import Minutes

class MinutesTests: XCTestCase {
    
    var sub:Entry!

    override func setUp() {
        sub = Entry("title", "content")
    }

    override func tearDown() {
        sub = nil
        super.tearDown()
    }
    
    func test_Searealization() {
        let serializedData = FileEntryStore.serialize(sub)
        
        let entry = FileEntryStore.deserialize(serializedData!)
        
        XCTAssertEqual(entry?.title, "title")
        XCTAssertEqual(entry?.content, "content")
    }


}
