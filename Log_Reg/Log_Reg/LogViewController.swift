//
//  LogViewController.swift
//  Log_Reg
//
//  Created by gaurav on 23/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class LogViewController: UIViewController {

    @IBOutlet weak var passLogtxt: UITextField!
    @IBOutlet weak var namelogtxt: UITextField!
   
    @IBAction func btnLog(_ sender: Any) {
        print("Name list is")
        //print(namelist)
        var flag=0
             for item in namelist
             {
                        //for (var i=0;i<namelist.count;i++)
                        //{
                        // print(item)
                            print("In for")
                            if(namelogtxt.text == item)
                            {
                                flag=1
                                break
                            }
                
                
                }
            if(flag==1)
            {
                print("pass is pas.............")
                performSegue(withIdentifier: "segue", sender: self)
            
            }
            else
            {
                print("pass is wrong")
            }
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
