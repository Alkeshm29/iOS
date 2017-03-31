//
//  ViewController.swift
//  ImgMoveTouch
//
//  Created by gaurav on 20/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myview: UIView!
    
    var pg=UIPanGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pg=UIPanGestureRecognizer.init(target: self,action :#selector(viewDidDragged))
        myview.addGestureRecognizer(pg)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func viewDidDragged()
    {
        let newpt=pg.location(in: self.view)
        
        //let newFrame = CGRectMake(newpt.x, newpt.y, myview.frame.size.width,myview.frame.size.height)
        //myview.frame=newFrame
    }

    // VCimgview.center = CGPoint(x: 160, y: 330)
 // Do any additional setup after loading the view, typically from a nib.


 
 }
