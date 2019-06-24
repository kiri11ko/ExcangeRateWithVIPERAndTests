//
//  ExchangeListExchangeListPresenter.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

class ExchangeListPresenter: ExchangeListModuleInput, ExchangeListViewOutput, ExchangeListInteractorOutput {

    var exchange: ExchangeData?
    weak var view: ExchangeListViewInput!
    var interactor: ExchangeListInteractorInput!
    var router: ExchangeListRouterInput!
    var sectionCount: Int = 1
    func openDetailsView() {
        router.openDetailsView()
    }
    func viewIsReady() {
        interactor.loadJSON() {
            self.view.refreshTableview()
        }
    }
}
