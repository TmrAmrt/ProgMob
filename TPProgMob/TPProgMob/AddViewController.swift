//
//  AddViewController.swift
//  TPProgMob
//
//  Created by “ios” on 03/12/2021.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var newTitle: UITextField!
    
    @IBOutlet weak var newDesc: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
        
    
    
    
    @IBAction func btnValidate(_ sender: Any) {
        Todo(title: newTitle.text ?? "Title", description: newDesc.text ?? "Descr", image: "")
    }
    
    
    
    

}
