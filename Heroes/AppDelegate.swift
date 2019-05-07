//
//  AppDelegate.swift
//  Heroes
//
//  Created by Ahmad Shabibul Hossain on 2019-05-06.
//  MIT License
//  Copyright © 2019 Ahmad Shabibul Hossain. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let service = HeroService()
        let presenter = HeroListPresenter(service: service)
        let heroListVC = HeroListViewController.instantiateFromStoryboard(presenter: presenter)
        let rootVC = UINavigationController(rootViewController: heroListVC)
        self.window?.rootViewController = rootVC
        self.window?.makeKeyAndVisible()
        return true
    }
}
