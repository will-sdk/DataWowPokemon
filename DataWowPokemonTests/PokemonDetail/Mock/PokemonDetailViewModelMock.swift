//
//  PokemonDetailViewModelMock.swift
//  DataWowPokemonTests
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import Foundation
@testable import DataWowPokemon

final class PokemonDetailViewModelMock: PokemonDetailViewModelProtocol {
    
    var view: PokemonDetailViewProtocol?
    var pokemonDetail: PokemonDetail = PokemonDetail().mock()
}
