//
//  ViewController.swift
//  appStoreSwag
//
//  Created by Andrii Kost on 2/15/18.
//  Copyright © 2018 Andrii Kost. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //Seting delegate and datasource for the current class
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Grabbing the table view that working with this delegate to get reusable cell
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            
            return cell
            
        } else {
            //return empty cell
            return CategoryCell()
        }
        
    }
    


}

