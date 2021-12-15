//
//  MainViewController.swift
//  TPProgMob
//
//  Created by “ios” on 15/12/2021.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCategories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CatTableViewCell
        cell.cat.text = myCategories[indexPath.row]
        return cell
    }
    
    
    @IBOutlet weak var MyCatTableView: UITableView!
    
    var myCategories = [String]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        myCategories.append("Cours")
        myCategories.append("RDV")
        myCategories.append("Autres")
                                
                    
        MyCatTableView.dataSource = self
        
        
        
    }
    
}
