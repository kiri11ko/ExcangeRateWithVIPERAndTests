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
    
    func openDetailsView(index: Int) {
        guard let rates = (exchange?.exchangeRate.rates)  else { return }
        
        let image = exchange?.exchangeList[index] ?? "USD"
        let rate = rates.list[image] ?? 0
        let countryData = CountryData(flagImage: image, rate: rate)
        router.openDetailsView(data: countryData)
    }
    func viewIsReady() {
        interactor.loadJSON()
    }
    func calculateRate(index: Int, text: String) {
        guard let rates = (exchange?.exchangeRate.rates)  else { return }
        guard let multy = Double(text)  else { return }
        for (key,value) in rates.list {
            if key != exchange?.exchangeList[index] {
                exchange?.exchangeRate.rates?.list[key] = value * multy
            }
        }
        view.refreshTableviewRows()
    }
    
    func refreshUI() {
        view.refreshTableview()
    }
    
    func showAlert(title: String, message: String) {
        view.refreshTableview()
        view.showAlert(title: title, message: message)
    }
}
