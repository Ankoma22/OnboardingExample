//
//  AppDelegate.swift
//  OnboardingExample
//
//  Created by Andrei Malyhin on 11/5/18.
//  Copyright © 2018 Ankoma Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    //MARK: private
    
    private var rootCoordinator: RootCoordinator?
    private var rootInjector = RootInjector()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        self.rootCoordinator = RootCoordinator(injection: rootInjector)
        window?.rootViewController = rootCoordinator!.start()
        window?.makeKeyAndVisible()
        return true
    }
}

