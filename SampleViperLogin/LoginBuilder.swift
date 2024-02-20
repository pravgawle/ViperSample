//
//  LoginBuilder.swift
//  SampleViperLogin
//
//  Created by Pravin Gawale on 20/08/19.
//  Copyright © 2019 Pravin G. All rights reserved.
//

import UIKit

class LoginBuilder {
    static func build() -> UIViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()
        let wireframe = LoginWireframe()
        
        viewController.presenter = presenter
        presenter.viewController = viewController
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        interactor.presenter = presenter
        wireframe.viewController = viewController
        
        _ = viewController.view //force loading the view to load the outlets
        return viewController
    }
}
