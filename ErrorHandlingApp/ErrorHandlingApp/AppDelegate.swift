//
//  AppDelegate.swift
//  ErrorHandlingApp
//
//  Created by Valery Shel on 13.02.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }
    
    
}

