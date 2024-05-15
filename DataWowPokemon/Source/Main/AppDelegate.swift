//
//  AppDelegate.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: AppCoordinator!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow()
        
        coordinator = AppCoordinator(window: window!)
        coordinator?.start()
        
        return true
    }
}
