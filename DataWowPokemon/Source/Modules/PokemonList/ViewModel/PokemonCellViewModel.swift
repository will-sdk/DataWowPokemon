//
//  PokemonCellViewModel.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import UIKit

final class PokemonCellViewModel {
    
    private var pokemon: Pokemon
    
    init(pokemon: Pokemon) {
        self.pokemon = pokemon
    }
    
    var name: String {
        return pokemon.name.capitalized
    }

    var id: String {
        return pokemon.id ?? ""
    }
}
