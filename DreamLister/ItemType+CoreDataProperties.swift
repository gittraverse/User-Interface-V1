//
//  ItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by Matthew Chung on 1/11/17.
//  Copyright © 2017 Matthew Chung. All rights reserved.
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
