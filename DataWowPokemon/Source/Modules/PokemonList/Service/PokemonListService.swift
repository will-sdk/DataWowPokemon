//
//  PokemonListService.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import Foundation

final class PokemonListService: PokemonListServiceProtocol {

    func getPokemonList(onComplete: @escaping (Result<PokemonList, APIError>) -> Void) {
        let request = PokemonRequest(requestType: .pokemonList)
        request.pokemonList { result in
            switch result {
            case let .success(list):
                onComplete(.success(list))
            case let .failure(error):
                onComplete(.failure(error))
            }
        }
    }
    
    func getPokemon(id: String, onComplete: @escaping (Result<PokemonDetail, APIError>) -> Void) {
        let request = PokemonRequest(requestType: .pokemonDetail(id: id))
        request.pokemonDetail { result in
            switch result {
            case let .success(detail):
                onComplete(.success(detail))
            case let .failure(error):
                onComplete(.failure(error))
            }
        }
    }
}
