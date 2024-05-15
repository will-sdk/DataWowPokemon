//
//  PokemonListServiceProtocol.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import Foundation

protocol PokemonListServiceProtocol {

    func getPokemonList(onComplete: @escaping (Result<PokemonList, APIError>) -> Void)
    func getPokemon(id: String, onComplete: @escaping (Result<PokemonDetail, APIError>) -> Void)
}
