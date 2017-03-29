//
//  ViewController.swift
//  ContainerViev
//
//  Created by gaurav on 29/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var container2: UIView!
    @IBOutlet weak var container1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentbtn(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex==0)
        {
            UIView.animate(withDuration: 0.5, animations:{
            self.container1.alpha=0.0
                self.container2.alpha=1.0
            })
        }
            else{
                UIView.animate(withDuration: 0.5, animations: {
                    self.container1.alpha=1.0
                    self.container2.alpha=0.0
                })
            }
        }
    

}

