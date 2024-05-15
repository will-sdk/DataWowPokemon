//
//  PokemonListViewMock.swift
//  DataWowPokemonTests
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import Foundation
@testable import DataWowPokemon

final class PokemonListViewMock: PokemonListViewProtocol {
    
    var didCallReloadCollectionView = false
    var didCallShowLoading = false
    
    func reloadCollectionView() {
        didCallReloadCollectionView = true
    }
    
    func showLoading(_ show: Bool) {
        didCallShowLoading = true
    }
}
