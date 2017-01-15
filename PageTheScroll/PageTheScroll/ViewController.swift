//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Matthew Chung on 1/6/17.
//  Copyright © 2017 Matthew Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollWidth/2 + scrollWidth * CGFloat(x)
            contentWidth += newX
            
            //adds icon
            scrollView.addSubview(imageView)
            //puts icon in center
            imageView.frame = CGRect(x: newX-75, y: (scrollView.frame.size.height/2)-75, width: 150, height: 150)
        }
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: scrollView.frame.size.height)

    }



}

