//
//  AppDelegate.swift
//  lesson13(HW)
//
//  Created by Maxim Fedoseenko on 16.03.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let mainVC = TabBar()
        
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
        
        
        return true
    }

    


}

