//
//  LoginPresenter.swift
//  SampleViperLogin
//
//  Created by Pravin Gawale on 20/08/19.
//  Copyright © 2019 Pravin G. All rights reserved.
//

import UIKit

protocol LoginEventHandler:class
{
    var viewModel : LoginViewModel { get }

    func loginViewDidPressLoginButton(_ userName: String, _ password: String)
}

protocol LoginResponseHandler: class
{
    func requestLoginDidFinish()
}

class LoginPresenter: LoginEventHandler, LoginResponseHandler {
    
    func loginViewDidPressLoginButton(_ userName: String, _ password: String) {
        interactor.handleLoginRequest(userName
            , password)
    }
    
    func requestLoginDidFinish() {
        //Success On login
        viewController?.showSuccessOnLogin()
        wireframe.goToHomeScreen()
    }
    

    //MARK: Relationships
    weak var viewController : LoginViewModelHandler?
    var interactor : LoginRequestHandler!
    var wireframe : LoginNavigationHandler!
    var viewModel = LoginViewModel()
    
}
