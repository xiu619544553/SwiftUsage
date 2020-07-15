//
//  AppDelegate.swift
//  SwiftUsage
//
//  Created by hello on 2020/7/14.
//  Copyright © 2020 TK. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window?.rootViewController = TKNavigationController.init(rootViewController: ViewController.init())
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

