//
//  MusicListVC.swift
//  SwappingScreensAndSegues
//
//  Created by Matthew Chung on 1/6/17.
//  Copyright © 2017 Matthew Chung. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
    }
    
    //Makes it so that rather than having login and normal app views stacking on each other, if you press back it will simply take you back to the login screen
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    
    //Calling/triggering a segue
    @IBAction func Load3rdScreenPressed(_ sender: Any) {
        let songTitle = "No Heart"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    //Preparing for segue so data can be passed from one VC to the next
    //This happens before viewDidLoad() occurs in "PlaySongVC"
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                
                //Calling getter/setter in PlaySongVC with ".selectedSong"
                destination.selectedSong = song
            }
        }
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
