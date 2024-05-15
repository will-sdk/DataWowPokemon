//
//  PokemonListViewController.swift
//  DataWowPokemon
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import UIKit

final class PokemonListViewController: UIViewController {

    private var viewModel: PokemonListViewModelProtocol!
    private var contentView: PokemonListView!

    init(viewModel: PokemonListViewModelProtocol) {
        self.viewModel = viewModel
        self.contentView = PokemonListView(viewModel: viewModel)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        self.view = contentView
        title = "Pokemon"
        setCustomStyle()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.fetchPokemonList()
    }
    
    private func setCustomStyle() {
        let font = UIFont(name: Constants.fontName, size: 16) ?? .systemFont(ofSize: 16)
        navigationController?.navigationBar.titleTextAttributes = [.font: font]
        UIBarButtonItem.appearance(whenContainedInInstancesOf: [UISearchBar.self])
            .setTitleTextAttributes([.font: font], for: .normal)
    }
}
