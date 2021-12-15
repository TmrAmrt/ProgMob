//
//  ViewController.swift
//  TPProgMob
//
//  Created by “ios” on 03/12/2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    var myData = [Todo]()
    var myDataFiltered = [Todo]()
    var myFilter = String()
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...5{
            
            myData.append(Todo(title: "Tache n° " + String(i),
                               description:"Description de la tache " + String(i) + " non définie...",
                               datereal: Date(),category: "RDV")
                          )
        }
        
        
        
        updateMyData()
        
        
        
        myTableView.dataSource = self
    }

    @IBAction func btnAddClicked(_ sender: Any) {
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDataFiltered.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCell
        cell.myTitle.text = myDataFiltered[indexPath.row].title
        cell.myDescription.text = myDataFiltered[indexPath.row].description
        return cell
    }
    
   
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let row = indexPath.row
            myDataFiltered.remove(at: row)
            myTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "afficherDetails"{
            let destination = segue.destination as! DescViewController
            let indexPath = myTableView.indexPathForSelectedRow!
            let row = indexPath.row
            destination.todo = myDataFiltered[row]
            updateMyData()
        }
        if segue.identifier == "catchosen"{
            
            let destination = segue.destination as! MainViewController
            myFilter = destination.myCategories[destination.MyCatTableView.indexPathForSelectedRow!.row]
            
            
        }
        
    }
    func updateMyData(){
        myDataFiltered = myData.filter{$0.category==myFilter}
        myDataFiltered.sort(by: {(e1,e2)->Bool in return e1.datereal < e2.datereal})
        myTableView.reloadData()
    }
    
    @IBAction func addtask(_ unwindSegue: UIStoryboardSegue) {
        if let destination = unwindSegue.source as? AddViewController{
            myData.append(Todo(title : destination.nom.text!, description : destination.descriptif.text!, datereal: destination.dater.date, category: destination.categorie.text!))
            updateMyData()
            
        }
    }
}

