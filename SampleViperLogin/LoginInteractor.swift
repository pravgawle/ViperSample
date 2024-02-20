//
//  LoginInteractor.swift
//  SampleViperLogin
//
//  Created by Pravin Gawale on 20/08/19.
//  Copyright © 2019 Pravin G. All rights reserved.
//

import UIKit

protocol LoginRequestHandler:class
{
    func handleLoginRequest(_ userName: String,_ password: String)
}

class LoginInteractor: LoginRequestHandler {
    
    weak var presenter : LoginResponseHandler?

    func handleLoginRequest(_ userName: String, _ password: String) {
        
        presenter?.requestLoginDidFinish()
    }
}
