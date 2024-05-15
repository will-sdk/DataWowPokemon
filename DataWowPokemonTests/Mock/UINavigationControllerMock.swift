//
//  UINavigationControllerMock.swift
//  DataWowPokemonTests
//
//  Created by kowit nanumchill on 12/5/2567 BE.
//

import UIKit

final class UINavigationControllerMock: UINavigationController {

    var pushedViewControllerMock: UIViewController?
    var presentedViewControllerMock: UIViewController?

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        pushedViewControllerMock = viewController
    }

    override func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        presentedViewControllerMock =  viewControllerToPresent
    }
}
