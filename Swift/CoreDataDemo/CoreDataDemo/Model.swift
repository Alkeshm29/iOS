//
//  Model.swift
//  CarSpotter
//
//  Created by Aaron on 03/08/2015.
//  Copyright © 2015 Aaron. All rights reserved.
//

import UIKit
import CoreData

class Model: NSManagedObject {
    
    @NSManaged var carmake: String
    @NSManaged var carmodel: String
    @NSManaged var caryear: String

}
