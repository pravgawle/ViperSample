//
//  LoginVC.swift
//  SampleViperLogin
//
//  Created by Pravin Gawale on 20/08/19.
//  Copyright © 2019 Pravin G. All rights reserved.
//

import UIKit

protocol LoginViewModelHandler:class
{
    func showErrorOnLogin()
    func showSuccessOnLogin()
}

class LoginVC: UIViewController,LoginViewModelHandler {

    var presenter: LoginEventHandler!

    var viewModel : LoginViewModel {
        get {
            return presenter.viewModel
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: LoginViewModelHandler Interface
    
    func showErrorOnLogin() {
        //Show Error
        print("Login Error")
    }
    
    func showSuccessOnLogin() {
        print("Login Success")
    }
    
    @IBAction func loginBtnAction(_ sender: Any) {
        presenter.loginViewDidPressLoginButton("username", "password")
    }
}
