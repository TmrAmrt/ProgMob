//
//  DescViewController.swift
//  TPProgMob
//
//  Created by “ios” on 03/12/2021.
//

import UIKit

class DescViewController: UIViewController {

    @IBOutlet weak var DescDesc: UILabel!
    @IBOutlet weak var DescTitre: UILabel!
    
    var todo = Todo(title: "Titre",description: "Description",image: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DescDesc.text = todo.description
        DescTitre.text = todo.title
    }
    

    

}
    


