//
//  ExchangeDetailsExchangeDetailsConfigurator.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class ExchangeDetailsModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ExchangeDetailsViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ExchangeDetailsViewController) {

        let router = ExchangeDetailsRouter()
        
        let presenter = ExchangeDetailsPresenter()
        presenter.view = viewController
        presenter.router = router
        
        let interactor = ExchangeDetailsInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
