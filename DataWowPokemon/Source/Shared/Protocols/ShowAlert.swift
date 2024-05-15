//
//  ShowAlert.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import UIKit

protocol ShowAlert {
    
    func showAlert(_ alert: UIAlertController)
}

extension ShowAlert where Self: CoordinatorProtocol {
    
    func showAlert(_ alert: UIAlertController) {
        DispatchQueue.main.async {
            self.navigationController.present(alert, animated: true, completion: nil)
        }
    }
}
