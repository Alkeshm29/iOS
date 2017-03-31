//
//  ViewController.swift
//  LocalData
//
//  Created by gaurav on 21/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    //var a=""
    //let un="UserNamekey"
    @IBOutlet weak var txtIn: UITextField!
    @IBOutlet weak var lblOut: UILabel!
    
    @IBAction func btn(_ sender: Any)
    {
//        a=txtIn.text!
//        lblOut.text=a
    lblOut.text=txtIn.text
    UserDefaults.standard.set(txtIn.text, forKey: "input")
    txtIn.text=""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let a = UserDefaults.standard.object(forKey: "input") as? String
        {
            lblOut.text=a
        }
    }
//    
  ///*
    let userName = "userNameKey"
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

            let array = ["Hello", "World"]
            defaults.set(array, forKey: "SavedArray")
            defaults.set(25, forKey: "Age")
            defaults.set(true, forKey: "UseTouchID")
            defaults.set(CGFloat.pi, forKey: "Pi")
            print(array)
        
            defaults.set("Paul Hudson", forKey: "Name")
            defaults.set(Date(), forKey: "LastRun")

            let dict = ["Name": "Paul", "Country": "UK"]
            defaults.set(dict, forKey: "SavedDict")

        
        
        
        let age = defaults.integer(forKey: "Age")
        let useTouchID = defaults.bool(forKey: "UseTouchID")
        let pi = defaults.double(forKey: "Pi")
        
        let array2 = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
        let dict1 = defaults.object(forKey: "SavedDict") as? [String: String] ?? [String: String]()
        
        
        print(array2)
        print(age)
        print(dict1)
     //       print(defaults.object(forKey: "someObject"))
    }

    @IBAction func wBtn(_ sender: Any) {
       // let defaults = UserDefaults.standard
        defaults.set("Coding Explorer", forKey: userName)
    }
    
    @IBAction func rBtn(_ sender: Any) {
     //   let defaults = UserDefaults.standard
        if let name = defaults.string(forKey: userName) {
            print(name)
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
