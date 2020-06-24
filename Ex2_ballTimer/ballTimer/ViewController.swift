//
//  ViewController.swift
//  ballTimer
//
//  Created by macbook on 6/12/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballView: UIImageView!
    var timer: Timer!
    var y1: CGFloat = 100
    let a: CGFloat = 1.0
    var v: CGFloat = 0.0
    var y2: CGFloat = 0.0
    var heightScreen: CGFloat!

    var radius: CGFloat = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        y2 = y1
        heightScreen = view.bounds.height

        timer = Timer.scheduledTimer(timeInterval: 0.02,
                                     target: self,
                                     selector: #selector(runLoop),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func runLoop(){
        v += a
        y2 += v

        if y2 > heightScreen - radius/2 - 80 {
            y2 = heightScreen - radius/2 - 80
            v = -v * 0.8
        }
        if v == -0.44 {
            timer.invalidate()
        }
        
        ballView.center = CGPoint(x: ballView.center.x, y: y2)
    }
    
}
