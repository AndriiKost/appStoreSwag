//
//  DataService.swift
//  appStoreSwag
//
//  Created by Andrii Kost on 2/15/18.
//  Copyright © 2018 Andrii Kost. All rights reserved.
//

import Foundation

class DataService {
    //Singleton
    static let instance = DataService()
    
    //non accessible variable outside the singleton
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
