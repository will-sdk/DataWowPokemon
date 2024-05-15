//
//  ViewCodeProtocol.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import Foundation

protocol ViewCodeProtocol {

    func setupHierarchy()
    func setupConstraints()
    func additionalSetup()
    func buildView()
}

extension ViewCodeProtocol {

    func buildView() {
        setupHierarchy()
        setupConstraints()
        additionalSetup()
    }

    func additionalSetup() {}
}
