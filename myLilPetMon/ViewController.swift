//
//  ViewController.swift
//  myLilPetMon
//
//  Created by yolo on 2015-12-26.
//  Copyright © 2015 foobar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var monsterImg: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       var imgArray = [UIImage]()
//        for i in imgArray {
//            let image = UIImage(named: "idle\(i).png")
//            print(i)
//            imgArray.append(image!)
//        }
//        
        for var i = 1; i <= 4; i++ {
            let image = UIImage(named: "idle (\(i)).png")
            print(i)
            imgArray.append(image!)
                
            monsterImg.animationImages = imgArray
            monsterImg.animationDuration = 0.8
            monsterImg.animationRepeatCount = 0
            monsterImg.startAnimating()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

