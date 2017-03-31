//
//  ViewController.swift
//  ScrollDemo
//
//  Created by gaurav on 20/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var srollview: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.srollview.isScrollEnabled=true
        self.srollview.contentSize=CGSize(width:self.srollview.frame.width,height:60.0+5*(self.srollview.frame.width/16.0*5.0));
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

