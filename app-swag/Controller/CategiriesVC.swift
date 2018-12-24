//
//  ViewController.swift
//  app-swag
//
//  Created by Milos Otasevic on 19/12/2018.
//  Copyright © 2018 Milos Otasevic. All rights reserved.
//

import UIKit

class CategiriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate{
 
    

    @IBOutlet weak var categoryTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        


    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategorirs().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategorirs()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }else{
            return CategoryCell()
        }
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let category = DataService.instance.getCategorirs()[indexPath.row]
        performSegue(withIdentifier: "ProductVCViewController", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVCViewController{
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil)
        productVC.initProducts(category: sender as! Category)
            
        } 
    }


}

