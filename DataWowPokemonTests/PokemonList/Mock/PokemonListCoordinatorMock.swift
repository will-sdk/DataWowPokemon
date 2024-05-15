//
//  PokemonListCoordinatorMock.swift
//  DataWowPokemonTests
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import UIKit
@testable import DataWowPokemon

final class PokemonListCoordinatorMock: PokemonListCoordinatorProtocol {
    
    var didCallShowDetail = false
    var didCallShowAlert = false

    func showAlert(_ alert: UIAlertController) {
        didCallShowAlert = true
    }
    
    func showDetail(for pokemonDetail: PokemonDetail) {
        didCallShowDetail = true
    }
}
