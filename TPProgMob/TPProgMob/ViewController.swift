//
//  ViewController.swift
//  TPProgMob
//
//  Created by “ios” on 03/12/2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    var myData = [Todo]()
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...5{
            
            myData.append(Todo(title: "Tache n° " + String(i),
                                 description:"Description de la tache " + String(i) + " non définie...",
                                 image: String(Int.random(in:1...5))))
            
            
        }
        myTableView.dataSource = self
        
    
        
        
    }
    @IBAction func btnAddClicked(_ sender: Any) {
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCell
        cell.myTitle.text = myData[indexPath.row].title
        cell.myDescription.text = myData[indexPath.row].description
        cell.myImage.image = UIImage(named: myData[indexPath.row].image)
        return cell
    }
    
    @IBAction func swipeRight(_ sender: Any) {
        myData.remove(at: myTableView.indexPathForSelectedRow!.row)
        
        }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let row = indexPath.row
            myData.remove(at: row)
            myTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "afficherDetails"{
            let destination = segue.destination as! DescViewController
            let indexPath = myTableView.indexPathForSelectedRow!
            let row = indexPath.row
            destination.todo = myData[row]
            
            
        }
    }
    
    @IBAction func addtask(_ unwindSegue: UIStoryboardSegue) {
        //        let addViewController = unwindSegue.source as! AddViewController
//        if unwindSegue.identifier == "cancel" {
//            addViewController.dismiss(animated: true, completion: nil)
//        }
//       if unwindSegue.identifier == "save" {
//            if let myTitle = addViewController.myTitle.text, let myDescription = addViewController.myDescription.text {
    //            let new_data = MyData(title: myTitle,
      //                                description: myDescription,
        //                              image: String(Int.random(in: 1...5)))
         //       myData.append(new_data)
          //      myTableView.reloadData()
           // }
    
    
    }}

