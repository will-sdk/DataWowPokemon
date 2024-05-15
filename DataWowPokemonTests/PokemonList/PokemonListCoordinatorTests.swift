//
//  PokemonListCoordinatorTests.swift
//  DataWowPokemonTests
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import XCTest
@testable import DataWowPokemon

final class PokemonListCoordinatorTests: XCTestCase {

    var sut: PokemonListCoordinator!
    var navigationMock: UINavigationControllerMock!
    var viewModelMock: PokemonListViewModelMock!

    override func setUpWithError() throws {
        build()
    }

    override func tearDownWithError() throws {
        sut = nil
        navigationMock = nil
    }

    func testCoordinatorStart() throws {
        sut.start()
        XCTAssertTrue(navigationMock.pushedViewControllerMock is PokemonListViewController)
    }
    
    func testCallPokemonDetail() async {
        sut.showDetail(for: PokemonDetail().mock())
        let viewController = await navigationMock.presentedViewControllerMock
        
        XCTAssertTrue(viewController is PokemonDetailViewController)
    }

    func build() {
        viewModelMock = PokemonListViewModelMock()
        navigationMock = UINavigationControllerMock()
        sut = PokemonListCoordinator(navigationController: navigationMock)
    }
}
