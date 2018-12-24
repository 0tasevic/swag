//
//  DataService.swift
//  app-swag
//
//  Created by Milos Otasevic on 19/12/2018.
//  Copyright © 2018 Milos Otasevic. All rights reserved.
//

import Foundation


class DataService {
     static let instance = DataService()
    
    
    private let hats = [
    Product(title: "Devslopes Logo Graphic Beanir", price: "$18", imageName: "hat01.png"),
    Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
    Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
    Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Gray", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Deveslopes Logo Hoodies Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Developes Logo Hoodies Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Developes Logo Hoodies Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirts Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Shirts Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirts Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Shirts Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Klickflip Studios Black" , price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    
   
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    
    
    
    func getCategorirs() -> [Category]{
        return categories
    }
    
    func getProduct(fotCategoryTitle title: String) -> [Product]{
        switch title {
        case "HATS":
          return getHats()
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
           return getShirts()
        }
    }
    
    //    geteri
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
    
    
    
    
}
