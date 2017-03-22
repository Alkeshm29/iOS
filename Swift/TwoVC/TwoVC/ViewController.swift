//
//  ViewController.swift
//  TwoVC
//
//  Created by gaurav on 17/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit
var name=""

class ViewController: UIViewController {

    
    @IBOutlet weak var txt: UITextField!
    
    @IBAction func btn(_ sender: Any) {
        if(txt.text != "")
        {
            name = txt.text!
            performSegue(withIdentifier: "segue", sender: self)
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

