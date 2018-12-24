//
//  CategoryCell.swift
//  app-swag
//
//  Created by Milos Otasevic on 19/12/2018.
//  Copyright © 2018 Milos Otasevic. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    func updateViews(category: Category){
        
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
    


}
