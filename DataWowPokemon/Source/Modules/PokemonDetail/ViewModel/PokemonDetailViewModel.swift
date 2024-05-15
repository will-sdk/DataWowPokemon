//
//  PokemonDetailViewModel.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import Foundation

final class PokemonDetailViewModel {
    
    weak var view: PokemonDetailViewProtocol?
    
    private var coordinator: PokemonDetailCoordinatorProtocol?
    private var detail: PokemonDetail

    init(coordinator: PokemonDetailCoordinatorProtocol,
         detail: PokemonDetail) {
        self.coordinator = coordinator
        self.detail = detail
    }
}

extension PokemonDetailViewModel: PokemonDetailViewModelProtocol {

    var pokemonDetail: PokemonDetail { return detail }
}
