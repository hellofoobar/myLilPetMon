//
//  MonsterImage.swift
//  myLilPetMon
//
//  Created by yolo on 2015-12-26.
//  Copyright © 2015 foobar. All rights reserved.
//

import UIKit

class MonsterImage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        idleAnimation()
    }
    
    func idleAnimation() {
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for var i = 1; i <= 4; i++ {
            let image = UIImage(named: "idle (\(i)).png")
            print(i)
            imgArray.append(image!)
            
            self.animationImages = imgArray
            self.animationDuration = 0.8
            self.animationRepeatCount = 0
            self.startAnimating()
        }
    }
    
    func deathAnimation() {
        
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for var i = 1; i <= 4; i++ {
            let image = UIImage(named: "dead\(i).png")

            imgArray.append(image!)
            
            self.animationImages = imgArray
            self.animationDuration = 0.8
            self.animationRepeatCount = 1
            self.startAnimating()
        }
    }
    
    
}