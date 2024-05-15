//
//  AppCoordinator.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import UIKit

final class AppCoordinator: CoordinatorProtocol {
    
    let navigationController: UINavigationController
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        self.navigationController = UINavigationController()
    }
    
    func start() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        self.showPokemonList()
    }
    
    private func showPokemonList() {
        let startCoordinator = PokemonListCoordinator(navigationController: navigationController)
        coordinate(to: startCoordinator)
    }
}
