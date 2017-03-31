//
//  ViewController.swift
//  ImportImg
//
//  Created by gaurav on 17/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit
var touch : UITouch!

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    var loc = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var VCimgview: UIImageView!
    
    @IBAction func VCBtn(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate=self
        image.sourceType=UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing=false
        self.present(image,animated: true)
        {
            //
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            VCimgview.image = image
        }
        else{
            //Error
        }
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
//    override func touchesBegan(touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in (touches ){
//            let location = touch.location(in: self.view)
//
//            if VCimgview.frame.contains(location){
//                VCimgview.center = location
//            }
//        }
//    }
//
//    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        for touch in (touches ){
//            let location = touch.location(in: self.view)
//
//            if VCimgview.frame.contains(location){
//                VCimgview.center = location
//            }
//        }
//    }
//    
    
override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    
        loc = touch.location(in: self.view)
        VCimgview.center=loc
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
       // let touch : UITouch!

        loc=touch.location(in: self.view)
        VCimgview.center=loc
        
    }
  
 
 override func viewDidLoad() {
        super.viewDidLoad()
        
        VCimgview.center = CGPoint(x: 160, y: 330)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

