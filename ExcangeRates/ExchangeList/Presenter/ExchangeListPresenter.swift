//
//  ExchangeListExchangeListPresenter.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

class ExchangeListPresenter: ExchangeListModuleInput, ExchangeListViewOutput, ExchangeListInteractorOutput {

    weak var view: ExchangeListViewInput!
    var interactor: ExchangeListInteractorInput!
    var router: ExchangeListRouterInput!

    func viewIsReady() {

    }
}
