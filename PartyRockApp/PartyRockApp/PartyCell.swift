//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Matthew Chung on 1/8/17.
//  Copyright © 2017 Matthew Chung. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        //URLs in swift are treated as objects
        let url = URL(string: partyRock.imageURL)!
        
        //Puts an asynchronous thread in the background that gets the data from the internet in real time
        //Asynchronous is the background thread
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                
                //Synchronous is the main thread where the UI can be updated
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                //If line 29 fails this catches error
            }
        }
    }

}
