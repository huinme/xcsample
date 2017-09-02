//
//  Author.swift
//  sample
//
//  Created by huin on 2017/08/20.
//  Copyright © 2017年 www.huin.me. All rights reserved.
//

import Foundation

class Author: NSObject {
    @objc let name: String
    @objc let profileImageName: String

    @objc init(name: String, profileImageName: String) {
        self.name = name
        self.profileImageName = profileImageName
        super.init()
    }
}
