//
//  ExchangeListExchangeListConfigurator.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class ExchangeListModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ExchangeListViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ExchangeListViewController) {

        let router = ExchangeListRouter()
        router.view = viewController
        let presenter = ExchangeListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ExchangeListInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
