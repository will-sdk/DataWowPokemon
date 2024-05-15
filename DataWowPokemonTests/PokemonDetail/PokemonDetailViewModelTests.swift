//
//  PokemonDetailViewModelTests.swift
//  DataWowPokemonTests
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import XCTest
@testable import DataWowPokemon

final class PokemonDetailViewModelTests: XCTestCase {

    var sut: PokemonDetailViewModel!
    var coordinatorMock: PokemonDetailCoordinatorMock!
    var viewMock: PokemonDetailViewMock!

    override func setUpWithError() throws {
        build()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testPokemonDetail() {
        XCTAssertEqual(sut.pokemonDetail.id, 1)
        XCTAssertEqual(sut.pokemonDetail.name, "ditto")
        XCTAssertEqual(sut.pokemonDetail.height, 3)
        XCTAssertEqual(sut.pokemonDetail.weight, 40)
    }

    func testView() {
        XCTAssertTrue((sut.view as Any) is PokemonDetailViewProtocol)
    }

    func build() {
        coordinatorMock = PokemonDetailCoordinatorMock()
        viewMock = PokemonDetailViewMock()
        sut = PokemonDetailViewModel(coordinator: coordinatorMock,
                                     detail: PokemonDetail().mock())
        sut.view = viewMock
    }
}
