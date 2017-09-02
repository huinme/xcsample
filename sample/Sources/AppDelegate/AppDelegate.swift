//
//  AppDelegate.swift
//  sample
//
//  Created by huin on 2017/08/20.
//  Copyright © 2017年 www.huin.me. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var secondWindow: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]?) -> Bool {

        NotificationCenter.default
            .addObserver(self,
                         selector: #selector(handleScreenDidConnectNotification(_:)),
                         name: .UIScreenDidConnect,
                         object: nil)
        return true
    }
}

extension AppDelegate {
    @objc func handleScreenDidConnectNotification(_ notification: Notification) {

        if UIScreen.screens.count > 1 {
            let screen = UIScreen.screens[1]

            let window = UIWindow(frame: screen.bounds)
            window.backgroundColor = .blue
            window.screen = screen

            secondWindow = window
            secondWindow?.makeKeyAndVisible()
        }
    }
}
