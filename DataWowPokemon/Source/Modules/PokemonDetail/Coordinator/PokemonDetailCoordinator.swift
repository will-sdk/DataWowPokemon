//
//  PokemonDetailCoordinator.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import UIKit

final class PokemonDetailCoordinator: CoordinatorProtocol {
    
    var navigationController: UINavigationController
    private var detail: PokemonDetail

    init(navigationController: UINavigationController,
         detail: PokemonDetail) {
        self.navigationController = navigationController
        self.detail = detail
    }
    
    func start() {
        let viewModel = PokemonDetailViewModel(coordinator: self, detail: detail)
        let pokemonDetailVC = PokemonDetailViewController(viewModel: viewModel)
        navigationController.modalPresentationStyle = .automatic
        navigationController.present(pokemonDetailVC, animated: true, completion: nil)
    }
}

extension PokemonDetailCoordinator: PokemonDetailCoordinatorProtocol {}
