//
//  sampleTests.swift
//  sampleTests
//
//  Created by huin on 2017/08/23.
//  Copyright © 2017年 www.huin.me. All rights reserved.
//

import XCTest
@testable import sample

class sampleTests: XCTestCase {

    let chapters = DataStore.fetchChapters()

    func testNumberOfChapters() {
        XCTAssert(chapters.count == 14, "Number of chapters was not expected value.")
    }
}
