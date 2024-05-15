//
//  CoordinatorProtocol.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import UIKit

protocol CoordinatorProtocol {

    var navigationController: UINavigationController { get }
    
    func start()
    func coordinate(to coordinator: CoordinatorProtocol)
}

extension CoordinatorProtocol {

    func coordinate(to coordinator: CoordinatorProtocol) {
        DispatchQueue.main.async {
            coordinator.start()
        }
    }
}
