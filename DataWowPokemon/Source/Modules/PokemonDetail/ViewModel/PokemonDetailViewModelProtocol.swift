//
//  PokemonDetailViewModelProtocol.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import Foundation

protocol PokemonDetailViewModelProtocol {

    var view: PokemonDetailViewProtocol? { get set }
    var pokemonDetail: PokemonDetail { get }
}
