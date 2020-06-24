//
//  ViewController.swift
//  dropball
//
//  Created by macbook on 6/12/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
                let y = self.ballView.frame.origin.y
                UIView.animate(withDuration: 2) {
                    self.ballView.frame.origin.y += self.view.bounds.height - y - self.ballView.bounds.height
        }

    }
}

