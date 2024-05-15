//
//  PokemonListViewModelMock.swift
//  DataWowPokemonTests
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import Foundation
@testable import DataWowPokemon

final class PokemonListViewModelMock: PokemonListViewModelProtocol {

    var view: PokemonListViewProtocol?
    var countPokemons: Int = 0
    
    func fetchPokemonList() {}
    func fetchPokemon(by: String) {}
    func openDetailFor(indexPath: IndexPath) {}

    func cellViewModelFor(at indexPath: IndexPath) -> PokemonCellViewModel {
        PokemonCellViewModel(pokemon: Pokemon())
    }
}
