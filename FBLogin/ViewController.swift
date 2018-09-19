//
//  ViewController.swift
//  FBLogin
//
//  Created by Zion Perez on 1/10/18.
//  Copyright © 2018 Zion Perez. All rights reserved.
//
//  https://developers.facebook.com/docs/swift/login
//  

import UIKit
import FacebookLogin
import FacebookCore


class ViewController: UIViewController, LoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.center = view.center
        // loginButton.delegate = self

        view.addSubview(loginButton)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let accessToken = AccessToken.current {
            // User is logged in, use 'accessToken' here.
            print("ACCESS Token: \(accessToken.userId ?? "none")")
        } else {
            print("No Access Token")
        }
    }
    
    func loginButtonDidCompleteLogin(_ loginButton: LoginButton, result: LoginResult) {
        
    }
    
    func loginButtonDidLogOut(_ loginButton: LoginButton) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

