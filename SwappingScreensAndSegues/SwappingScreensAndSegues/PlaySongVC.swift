//
//  PlaySongVC.swift
//  SwappingScreensAndSegues
//
//  Created by Matthew Chung on 1/6/17.
//  Copyright © 2017 Matthew Chung. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    
    
    // This getter and setter is called before viewDidLoad() because
    // when you call prepare for segway in the "MusicListVC", the 
    //getter and setter is called even before viewDidLoad() is called.
    private var _selectedSong:String!
    var selectedSong: String {
        get {
            return _selectedSong
        }
        set {
            _selectedSong = newValue
        }
    }
    
    
    @IBOutlet weak var songTitleLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLbl.text = _selectedSong
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
