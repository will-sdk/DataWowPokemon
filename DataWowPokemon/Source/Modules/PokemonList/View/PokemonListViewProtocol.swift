//
//  PokemonListViewProtocol.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import UIKit

protocol PokemonListViewProtocol: AnyObject {

    func reloadCollectionView()
    func showLoading(_ show: Bool)
}
