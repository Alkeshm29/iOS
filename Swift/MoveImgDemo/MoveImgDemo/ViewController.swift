//
//  ViewController.swift
//  MoveImgDemo
//
//  Created by gaurav on 18/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    var pg=UIPanGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pg=UIPanGestureRecognizer.init(target: self,action :#selector(viewDidDragged))
            // img.layer.cornerRadius =
        img.layer.masksToBounds=true
        img.addGestureRecognizer(pg)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func viewDidDragged()
    {
        let newpt=pg.location(in: self.view)
        let newFrame = CGRectMake(newpt.x, newpt.y, img.frame.size.width,
        let newFrame = CGRect(x: 0, y: 0, width: 50, height: 50)
        img.frame.size.height
        img.frame=newFrame
    }

}

