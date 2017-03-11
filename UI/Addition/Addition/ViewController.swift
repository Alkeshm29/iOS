//
//  ViewController.swift
//  Addition
//
//  Created by gaurav on 28/02/17.
//  Copyright © 2017 gaurav. All rights reserved.
//

import UIKit




class ViewController: UIViewController {

    @IBOutlet weak var textfd1: UITextField!
    
    @IBOutlet weak var textfd2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func add(_ sender: Any) {
        print(textfd1.text!)
        print(textfd2.text!)
        
    }

}

