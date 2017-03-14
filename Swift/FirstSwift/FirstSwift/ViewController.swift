//
//  ViewController.swift
//  FirstSwift
//
//  Created by gaurav on 14/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PressedButton(_ sender: Any) {
       // label1.text =
        var a = textfield1.text
        label1.text = a
        
    }

}

