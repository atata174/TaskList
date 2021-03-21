//
//  AppDelegate.swift
//  TaskList
//
//  Created by PenguinRaja on 18.03.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible() // видимость вьюшки
        window?.rootViewController = UINavigationController(rootViewController: MainViewController()) // стартовый вьюконтроллер
        return true
    }
}

