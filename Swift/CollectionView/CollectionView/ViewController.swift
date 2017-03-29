//
//  ViewController.swift
//  CollectionView
//
//  Created by gaurav on 21/03/17.
//  Copyright © 2017 Alk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{

    @IBOutlet weak var collectionView: UICollectionView!
    let imglist=["NarendraModi.jpeg","RajnathSingh.jpeg","Arun Jetaly.jpeg","SushmaSwaraj.jpeg","SureshPrabhu.jpeg","SmrutiIrani.jpeg","NitinGadkari.jpeg","NarendraModi.jpeg","RajnathSingh.jpeg","Arun Jetaly.jpeg","SushmaSwaraj.jpeg","SureshPrabhu.jpeg","SmrutiIrani.jpeg","NitinGadkari.jpeg"];
    //let namelist=["NarendraModi"];//,"RajnathSingh","Arun Jetaly","SushmaSwaraj","SureshPrabhu","SmrutiIrani","NitinGadkari"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imglist.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for:indexPath) as! CollectionViewCell
        cell.imageView.image=UIImage(named:imglist[indexPath.row])
        return cell
        
        
    }
}

