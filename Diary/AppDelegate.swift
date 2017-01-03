//
//  AppDelegate.swift
//  Diary
//
//  Created by almond on 2017. 1. 3..
//  Copyright © 2017년 almond. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = UINavigationController(rootViewController: DiaryListViewController())
        
        return true
    }
}
