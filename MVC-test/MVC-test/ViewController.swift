//
//  ViewController.swift
//  MVC-test
//
//  Created by Matthew Chung on 1/10/17.
//  Copyright © 2017 Matthew Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var renameField: UITextField!
     
    let person = Person(first: "Matthew", last: "Chung")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.text = person.fullName
    }

    @IBAction func renamePressed(_ sender: Any) {
        if let text = renameField.text {
            person.firstName = text
            fullName.text = person.fullName
        }
    }

}

