//
//  AddViewController.swift
//  CarSpotter
//
//  Created by Aaron on 03/08/2015.
//  Copyright © 2015 Aaron. All rights reserved.
//

import UIKit
import CoreData

class AddViewController: UIViewController {
    
    @IBOutlet weak var TextfieldCarMake: UITextField!
    @IBOutlet weak var TextfieldCarModel: UITextField!
    @IBOutlet weak var TextfieldCarYear: UITextField!
    
    var carmake: String = ""
    var carmodel: String = ""
    var caryear: String = ""

    var existingItem: NSManagedObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if (existingItem != nil) {
            
            TextfieldCarMake.text = carmake
            TextfieldCarModel.text = carmodel
            TextfieldCarYear.text = caryear
            
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func Save(sender: AnyObject) {
        
        let AppDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let theContext: NSManagedObjectContext = AppDel.managedObjectContext
        let theEnt = NSEntityDescription.entityForName("CarList", inManagedObjectContext: theContext)
        
        
        if (existingItem != nil) {
            
            existingItem.setValue(TextfieldCarMake.text as String?, forKey: "carmake")
            existingItem.setValue(TextfieldCarModel.text as String?, forKey: "carmodel")
            existingItem.setValue(TextfieldCarYear.text as String?, forKey: "caryear")
            
        } else {
            
            let newitem = Model(entity: theEnt!, insertIntoManagedObjectContext: theContext)
            
            newitem.carmake = TextfieldCarMake.text!
            newitem.carmodel = TextfieldCarModel.text!
            newitem.caryear = TextfieldCarYear.text!
            
        }
        
        do {
            
            try theContext.save()
            
        } catch _ {
            
        }
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
        
    }
    
    
    
    
    

}
