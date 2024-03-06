//
//  AppDelegate.swift
//  PanModal
//
//  Created by Stephen Sowole on 10/9/18.
//  Copyright © 2018 PanModal. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        #if !os(visionOS)
        window = UIWindow(frame: UIScreen.main.bounds)
        #else
        window = UIWindow(frame: CGRect(x: 0, y: 0, width: 1280, height: 720))
        #endif
        window?.rootViewController = UINavigationController(rootViewController: SampleViewController())
        window?.makeKeyAndVisible()
        return true
    }
}
