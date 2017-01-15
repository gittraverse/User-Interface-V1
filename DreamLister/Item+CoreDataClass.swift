//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Matthew Chung on 1/11/17.
//  Copyright © 2017 Matthew Chung. All rights reserved.
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {

    //Any time item is created, this function will be called
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        
        //Creates timestamp
        self.created = NSDate()
    }
}
