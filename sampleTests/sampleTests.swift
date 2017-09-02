//
//  sampleTests.swift
//  sampleTests
//
//  Created by huin on 2017/08/23.
//  Copyright © 2017年 www.huin.me. All rights reserved.
//

import XCTest

class sampleTests: XCTestCase {

    func testSaveUUID() {
        let uuid = UUID().uuidString

        let attachment = XCTAttachment(string: "UUID : \(uuid)")
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
