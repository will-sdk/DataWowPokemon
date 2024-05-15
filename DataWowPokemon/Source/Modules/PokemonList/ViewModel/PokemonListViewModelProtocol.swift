//
//  PokemonListViewModelProtocol.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import Foundation

protocol PokemonListViewModelProtocol {

    var view: PokemonListViewProtocol? { get set }
    var countPokemons: Int { get }
    
    func fetchPokemonList()
    func fetchPokemon(by id: String)
    func openDetailFor(indexPath: IndexPath)
    func cellViewModelFor(at indexPath: IndexPath) -> PokemonCellViewModel
}
