//
//  ViewController.swift
//  A902HelloViews
//
//  Created by 申潤五 on 2022/9/24.
//

import UIKit

class ViewController: UIViewController {

    var theView:UIView = UIView()
    
    var counter = 0.0
    var timer:Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        theView.bounds = CGRect(x: 0, y: 0, width: 200, height: 200)
        theView.center = self.view.center
        theView.backgroundColor = UIColor.red
        
        counter = 45
        setRotate()
        
        
        theView.layer.cornerRadius = 15
        theView.clipsToBounds = true
        
      
        
        self.view.addSubview(theView)
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0/60, target: self, selector: #selector(setRotate), userInfo: nil, repeats: true)
        timer.fire()
        
        
    }
    
    @objc func setRotate(){
        let angle =  counter * Double.pi / 180
        theView.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        counter += 1
    }


}

