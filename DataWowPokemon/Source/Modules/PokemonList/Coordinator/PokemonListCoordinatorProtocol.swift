//
//  PokemonListCoordinatorProtocol.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import Foundation

protocol PokemonListCoordinatorProtocol: AnyObject, ShowAlert {

    func showDetail(for pokemonDetail: PokemonDetail)
}
