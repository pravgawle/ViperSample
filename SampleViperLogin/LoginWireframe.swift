//
//  LoginWireframe.swift
//  SampleViperLogin
//
//  Created by Pravin Gawale on 20/08/19.
//  Copyright © 2019 Pravin G. All rights reserved.
//

import UIKit

// MARK: - Protocol to be defined at Wireframe
protocol LoginNavigationHandler:class
{
    func goToHomeScreen()
}

class LoginWireframe: LoginNavigationHandler {
    
    weak var viewController : LoginVC?

    func goToHomeScreen() {
        print("Push to Home screen")
    }

}
