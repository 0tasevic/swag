//
//  Category.swift
//  app-swag
//
//  Created by Milos Otasevic on 19/12/2018.
//  Copyright © 2018 Milos Otasevic. All rights reserved.
//

import Foundation
struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
//    Konstruktor
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
    
    
}
