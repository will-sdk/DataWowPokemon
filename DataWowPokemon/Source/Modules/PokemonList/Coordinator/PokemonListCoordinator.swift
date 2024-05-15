//
//  PokemonListCoordinator.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import UIKit

final class PokemonListCoordinator: CoordinatorProtocol {
    
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = PokemonListViewModel(coordinator: self)
        let pokemonListVC = PokemonListViewController(viewModel: viewModel)
        navigationController.pushViewController(pokemonListVC, animated: true)
    }
}

extension PokemonListCoordinator: PokemonListCoordinatorProtocol {

    func showDetail(for pokemonDetail: PokemonDetail) {
        let pokemonDetail = PokemonDetailCoordinator(
            navigationController: navigationController,
            detail: pokemonDetail
        )
        coordinate(to: pokemonDetail)
    }
}
