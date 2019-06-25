//
//  ExchangeListExchangeListRouter.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

class ExchangeListRouter: ExchangeListRouterInput {
    var view: ExchangeListViewController!
    
    func openDetailsView(data: CountryData) {
        view.performSegue(withIdentifier: "details", sender: data)
    }
    

}
