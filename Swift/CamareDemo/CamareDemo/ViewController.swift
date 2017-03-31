//
//  ViewController.swift
//  CamareDemo
//
//  Created by gaurav on 23/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    var ip: UIImagePickerController!

  //  @IBOutlet weak var imgVIew: UIImageView!
  //  @IBOutlet weak var imgView: UIImageView!
   // @IBOutlet weak var imgVIew: UIImageView!
    @IBOutlet weak var imgView: UIImageView!

    
    @IBAction func btnClick(_ sender: Any) {
        ip =  UIImagePickerController()
        ip.delegate = self
        ip.sourceType = .camera
        
        present(ip, animated: true, completion: nil)
        
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        ip.dismiss(animated: true, completion: nil)
        imgView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
//        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
//            var imagePicker = UIImagePickerController()
//            imagePicker.delegate = self
//            imagePicker.sourceType = UIImagePickerControllerSourceType.camera;
//            imagePicker.allowsEditing = false
//            self.present(imagePicker, animated: true, completion: nil)
//        }
  //  }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

