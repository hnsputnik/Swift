//
//  PushViewController.swift
//  Ex5_autolayout
//
//  Created by macbook on 6/19/20.
//  Copyright © 2020 hoangnam. All rights reserved.
//

import UIKit

class PushViewController: UIViewController {
    
    var blackView = UIView()
    var lineEmail = UIView()
    var linePass = UIView()
    var emailField = UITextField()
    var passField = UITextField()
    var rememberLabel = UILabel()
    var signInFb = UIButton()
    var signIn = UIButton()
    var loginLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        
        signIn.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        lineEmail.translatesAutoresizingMaskIntoConstraints = false
        blackView.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        linePass.translatesAutoresizingMaskIntoConstraints = false
        emailField.translatesAutoresizingMaskIntoConstraints = false
        passField.translatesAutoresizingMaskIntoConstraints = false
        signInFb.translatesAutoresizingMaskIntoConstraints = false
        signIn.translatesAutoresizingMaskIntoConstraints = false
        rememberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(blackView)
        blackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        blackView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor).isActive = true
        blackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        blackView.heightAnchor.constraint(equalToConstant: 243).isActive = true
        blackView.backgroundColor = UIColor.darkGray
        
        view.addSubview(loginLabel)
        loginLabel.topAnchor.constraint(equalTo: blackView.bottomAnchor, constant: -100).isActive = true
        loginLabel.rightAnchor.constraint(equalTo: blackView.rightAnchor, constant: -50).isActive = true
        loginLabel.leadingAnchor.constraint(equalTo: blackView.leadingAnchor, constant: 50).isActive = true
        loginLabel.text = "Log into \nyour account"
        loginLabel.lineBreakMode = .byWordWrapping
        loginLabel.numberOfLines = 2
//        loginLabel.textAlignment = NSTextAlignment.left
//        loginLabel.textAlignment = .left
        loginLabel.textColor = UIColor.white
        loginLabel.font = loginLabel.font.withSize(35)
        
        view.addSubview(emailField)
        emailField.topAnchor.constraint(equalTo: blackView.bottomAnchor, constant: 30).isActive = true
        emailField.rightAnchor.constraint(equalTo: blackView.rightAnchor, constant: -50).isActive = true
        emailField.leadingAnchor.constraint(equalTo: blackView.leadingAnchor, constant: 50).isActive = true
        emailField.text = "Email"
        emailField.textColor = UIColor.white

        view.addSubview(lineEmail)
        lineEmail.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 5).isActive = true
        lineEmail.rightAnchor.constraint(equalTo: emailField.rightAnchor).isActive = true
        lineEmail.leadingAnchor.constraint(equalTo: emailField.leadingAnchor).isActive = true
        lineEmail.heightAnchor.constraint(equalToConstant: 1).isActive = true
        lineEmail.backgroundColor = UIColor.white
        
        view.addSubview(passField)
        passField.topAnchor.constraint(equalTo: lineEmail.bottomAnchor, constant: 30).isActive = true
        passField.rightAnchor.constraint(equalTo: lineEmail.rightAnchor).isActive = true
        passField.leadingAnchor.constraint(equalTo: lineEmail.leadingAnchor).isActive = true
        passField.text = "Password"
        passField.textColor = UIColor.white
        
        view.addSubview(linePass)
        linePass.topAnchor.constraint(equalTo: passField.bottomAnchor, constant: 5).isActive = true
        linePass.rightAnchor.constraint(equalTo: passField.rightAnchor).isActive = true
        linePass.leadingAnchor.constraint(equalTo: passField.leadingAnchor).isActive = true
        linePass.heightAnchor.constraint(equalToConstant: 1).isActive = true
        linePass.backgroundColor = UIColor.white
        
        view.addSubview(linePass)
        linePass.topAnchor.constraint(equalTo: passField.bottomAnchor, constant: 5).isActive = true
        linePass.rightAnchor.constraint(equalTo: passField.rightAnchor).isActive = true
        linePass.leadingAnchor.constraint(equalTo: passField.leadingAnchor).isActive = true
        linePass.heightAnchor.constraint(equalToConstant: 1).isActive = true

        view.addSubview(rememberLabel)
        rememberLabel.topAnchor.constraint(equalTo: linePass.bottomAnchor, constant: 30).isActive = true
        rememberLabel.rightAnchor.constraint(equalTo: linePass.rightAnchor).isActive = true
        rememberLabel.leadingAnchor.constraint(equalTo: linePass.leadingAnchor, constant: 30).isActive = true
        rememberLabel.text = "Remember me"
        rememberLabel.textColor = UIColor.white

        view.addSubview(signIn)
        signIn.topAnchor.constraint(equalTo: rememberLabel.bottomAnchor, constant: 60).isActive = true
        signIn.rightAnchor.constraint(equalTo: rememberLabel.rightAnchor, constant: 10).isActive = true
        signIn.leadingAnchor.constraint(equalTo: rememberLabel.leadingAnchor, constant: -40).isActive = true
        signIn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signIn.backgroundColor = UIColor.gray
        signIn.setTitle("SIGN IN", for: .normal)

        view.addSubview(signInFb)
        signInFb.topAnchor.constraint(equalTo: signIn.bottomAnchor, constant: 10).isActive = true
        signInFb.rightAnchor.constraint(equalTo: signIn.rightAnchor).isActive = true
        signInFb.leadingAnchor.constraint(equalTo: signIn.leadingAnchor).isActive = true
        signInFb.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signInFb.backgroundColor = UIColor.blue
        signInFb.setTitle("SIGN UP WITH FACEBOOK", for: .normal)

    }
    override func viewDidLayoutSubviews() {
        signIn.layer.cornerRadius = 25
        signInFb.layer.cornerRadius = 25
    }
    
}
