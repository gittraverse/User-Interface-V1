//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Matthew Chung on 1/8/17.
//  Copyright © 2017 Matthew Chung. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get  {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //To disable breakpoints, click CMD+7 and unhilight the 2 blue tabs
        titleLbl.text = partyRock.videoTitle
        webview.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
