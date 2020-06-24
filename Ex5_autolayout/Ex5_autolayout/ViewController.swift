//
//  ViewController.swift
//  Ex5_autolayout
//
//  Created by macbook on 6/19/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var txtLabel = UILabel()
    var line = UIView()
    let signupEmail = UIButton()
    let signupFb = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        let openSignIn = UIButton(frame: CGRect(x: 50, y: 100, width: 200, height: 100))
        openSignIn.addTarget(self, action: #selector(openSignInVC), for: .touchUpInside)
        let right = UIBarButtonItem(title: "Sign In", style: .plain, target: self, action: #selector(openSignInVC))
        self.navigationItem.rightBarButtonItem = right
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barTintColor = .darkGray
        self.view.backgroundColor = UIColor.darkGray
        signupFb.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            
        signupFb.translatesAutoresizingMaskIntoConstraints = false
        signupEmail.translatesAutoresizingMaskIntoConstraints = false
        txtLabel.translatesAutoresizingMaskIntoConstraints = false
        line.translatesAutoresizingMaskIntoConstraints = false
            
        view.addSubview(signupFb)
        signupFb.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -40).isActive = true
        signupFb.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
        signupFb.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
        signupFb.heightAnchor.constraint(equalToConstant: 50).isActive = true;
        signupFb.backgroundColor = UIColor.blue
        signupFb.setTitle("SIGN UP WITH FACEBOOK", for: .normal)
        signupFb.setTitleColor(UIColor.white, for: .normal)
        signupFb.addTarget(self, action: #selector(fbAction), for: .allTouchEvents)
            
            
        view.addSubview(signupEmail)
        signupEmail.rightAnchor.constraint(equalTo: signupFb.rightAnchor).isActive = true
        signupEmail.leftAnchor.constraint(equalTo: signupFb.leftAnchor).isActive = true
        signupEmail.bottomAnchor.constraint(equalTo: signupFb.topAnchor, constant: -10).isActive = true
        signupEmail.heightAnchor.constraint(equalToConstant: 50).isActive = true;
        signupEmail.backgroundColor = UIColor.lightGray
        signupEmail.setTitle("SIGN UP WITH EMAIL", for: .normal)
        signupEmail.setTitleColor(UIColor.white, for: .normal)
        signupEmail.addTarget(self, action: #selector(changeText), for: .allTouchEvents)
            
            
        view.addSubview(line)
        line.rightAnchor.constraint(equalTo: signupEmail.rightAnchor, constant: -5).isActive = true
        line.leadingAnchor.constraint(equalTo: signupEmail.leadingAnchor, constant: 5).isActive = true
        line.bottomAnchor.constraint(equalTo: signupEmail.topAnchor, constant: -40).isActive = true
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true;
        line.backgroundColor = UIColor.white
            
            
        view.addSubview(txtLabel)
        txtLabel.rightAnchor.constraint(equalTo: line.rightAnchor, constant: 5).isActive = true
        txtLabel.leadingAnchor.constraint(equalTo: line.leadingAnchor, constant: -5).isActive = true
        txtLabel.bottomAnchor.constraint(equalTo: line.topAnchor, constant: -20).isActive = true
        txtLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true;
        txtLabel.lineBreakMode = .byWordWrapping
        txtLabel.numberOfLines = 3
        txtLabel.textColor = UIColor.white
        txtLabel.backgroundColor = UIColor.darkGray
            
    }
    override func viewDidLayoutSubviews() {
        signupEmail.layer.cornerRadius = 25
        signupFb.layer.cornerRadius = 25
    }
        
    @objc func fbAction(){
        txtLabel.text = "Ideal store for your jewellery shopping"
        txtLabel.font = txtLabel.font.withSize(35)
    }
    @objc func changeText(){
        signupEmail.setTitle("SIGN IN", for: .normal)
    }
        
    @objc func openSignInVC() {
        let pushVC = PushViewController()
        self.navigationController?.pushViewController(pushVC, animated: true)
    }

}
