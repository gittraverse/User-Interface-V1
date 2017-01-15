//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Matthew Chung on 1/8/17.
//  Copyright © 2017 Matthew Chung. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRockArray = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MUST ADD A BACKSLASH BEFORE EVERY QUOTE FOR VIDEO URL
        let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/SjmTFIHX1yo/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lights Out MV")
        let p2 = PartyRock(imageURL: "http://img.cache.vevo.com/Content/VevoImages/video/FA5A49347D78B1BE9155B23EC4DF5EFF2013279182629223.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CdLhdrNgGu4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lets Get Ridiculous MV")
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/k7OtcWVaT5s/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle MV")
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/XExH20lc9aY/maxresdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Md-8YlE-KhA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Booty Man MV")
        let p5 = PartyRock(imageURL: "https://upload.wikimedia.org/wikipedia/en/a/a2/Party_Rock_Anthem_(feat._Lauren_Bennet_%26_GoonRock)_-_Single.jpeg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Rock Anthem MV")
        
        partyRockArray.append(p1)
        partyRockArray.append(p2)
        partyRockArray.append(p3)
        partyRockArray.append(p4)
        partyRockArray.append(p5)
        
        //So when the table view is being used, it will call the functions below
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //Required PROTOCOLS
    //These are the protocols for recycling cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // the "as? PartyCell" at the end casts the return as a PartyCell
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRockArray[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRockArray.count
    }
    
    
    //SEGUE PREPARING FUNCTIONS
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRockArray[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    //PREPARE FUNCTION HAPPENS BEFORE GOING TO THE VIDEOVC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }
    
}

