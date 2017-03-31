//
//  ViewController.swift
//  Log_Reg
//
//  Created by gaurav on 22/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit
var namelist=[String]()
var passlist=[String]()
var savename=[String]()
var savepass=[String]()

class ViewController: UIViewController {
    let defaults = UserDefaults.standard

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    
    @IBAction func btnBack(_ sender: Any) {
//        if(txtName.text == "")
//        {
//            performSegue(withIdentifier: "segue", sender: self)
//        }
    }
    
    
    @IBAction func BtnLog(_ sender: Any) {
        
        namelist.append(txtName.text!)
        defaults.set(namelist, forKey: "SavedArray")
        
        passlist.append(txtPass.text!)
        defaults.set(passlist, forKey: "Savedpass")
        txtName.text=""
        print(namelist)
        print(passlist)
   
    }
    override func viewDidAppear(_ animated: Bool) {
        
        savename = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
        savepass=defaults.object(forKey: "Savedpass") as? [String] ?? [String]()
        
        print(savename)
        print(savepass)
        namelist=savename
        passlist=savepass
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        namelist=savename
        passlist=savepass
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
