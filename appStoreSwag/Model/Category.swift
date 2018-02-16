//
//  Category.swift
//  appStoreSwag
//
//  Created by Andrii Kost on 2/15/18.
//  Copyright © 2018 Andrii Kost. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    //not the same as variables above
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
