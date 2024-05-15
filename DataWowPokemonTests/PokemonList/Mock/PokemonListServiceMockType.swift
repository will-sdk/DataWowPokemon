//
//  PokemonListServiceMockType.swift
//  DataWowPokemonTests
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import Foundation
@testable import DataWowPokemon

enum PokemonListServiceMockType {

    case success, failure

    var service: PokemonListServiceMock {
        let serviceMock = PokemonListServiceMock()

        switch self {
        case .success:
            serviceMock.pokemonListResult = .success(PokemonList().mock())
            serviceMock.pokemonResult = .success(PokemonDetail().mock())
        case .failure:
            serviceMock.pokemonListResult = .failure(.noData)
            serviceMock.pokemonResult = .failure(.noData)
        }

        return serviceMock
    }
}
