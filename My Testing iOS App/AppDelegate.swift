//
//  AppDelegate.swift
//  My Testing iOS App
//
//  Created by Xiaochen Guo on 3/1/2018.
//  Copyright © 2018 Xiaochen Guo. All rights reserved.
//

import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    struct Constants {
        static let appCenterId = "9d9d49b0-05a6-43fd-8eed-b7baf6c6e16e"
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setupAppCenterServices()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {

    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }

    func setupAppCenterServices() -> Void {
        MSAppCenter.start(Constants.appCenterId, withServices:[
            MSAnalytics.self,
            MSCrashes.self
            ])
    }
}

