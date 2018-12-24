//
//  ProductVCViewController.swift
//  app-swag
//
//  Created by Milos Otasevic on 19/12/2018.
//  Copyright © 2018 Milos Otasevic. All rights reserved.
//

import UIKit

class ProductVCViewController: UIViewController, UICollectionViewDelegate,  UICollectionViewDataSource {
    @IBOutlet weak var productsCollection: UICollectionView!
    
    
 private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self

        // Do any additional setup after loading the view.
    }
    

    func initProducts(category: Category){
       products = DataService.instance.getProduct(fotCategoryTitle: category.title)
        
        navigationItem.title = category.title
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell3{
         let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell3()
    }

}
