//
//  PokemonDetailCoordinatorTests.swift
//  DataWowPokemonTests
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import XCTest
@testable import DataWowPokemon

final class PokemonDetailCoordinatorTests: XCTestCase {

    var sut: PokemonDetailCoordinator!
    var navigationMock: UINavigationControllerMock!
    var viewModelMock: PokemonDetailViewModelMock!

    override func setUpWithError() throws {
        build()
    }

    override func tearDownWithError() throws {
        sut = nil
        navigationMock = nil
    }

    func testCoordinatorStart() throws {
        sut.start()
        XCTAssertTrue(navigationMock.presentedViewControllerMock is PokemonDetailViewController)
    }

    func build() {
        viewModelMock = PokemonDetailViewModelMock()
        navigationMock = UINavigationControllerMock()
        sut = PokemonDetailCoordinator(navigationController: navigationMock,
                                       detail: PokemonDetail().mock())
    }
}
