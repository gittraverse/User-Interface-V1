//
//  ViewController.swift
//  HelloWorld
//
//  Created by Matthew Chung on 1/3/17.
//  Copyright © 2017 Matthew Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var welcomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Function that happens when button is pressed
    @IBAction func welcomePressed(_ sender: Any) {
        //unhides the title and background
        background.isHidden = false;
        titleImage.isHidden = false;
        
        //hides the button
        welcomeButton.isHidden = true;
    }

}

