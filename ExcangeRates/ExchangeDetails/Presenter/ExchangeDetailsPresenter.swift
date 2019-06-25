//
//  ExchangeDetailsExchangeDetailsPresenter.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

class ExchangeDetailsPresenter: ExchangeDetailsModuleInput, ExchangeDetailsViewOutput, ExchangeDetailsInteractorOutput {
    var countryData: CountryData?
    weak var view: ExchangeDetailsViewInput!
    var interactor: ExchangeDetailsInteractorInput!
    var router: ExchangeDetailsRouterInput!

    func viewIsReady() {
        guard let data = countryData else { return }
        view.setCountryData(country: data.flagImage , rate: data.rate)
    }
    func test() {
            
    }
}
