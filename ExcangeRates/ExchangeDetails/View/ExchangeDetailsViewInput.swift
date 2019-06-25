//
//  ExchangeDetailsExchangeDetailsViewInput.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

protocol ExchangeDetailsViewInput: class {

    /**
        @author generamba help
        Setup initial state of the view
    */

    func setupInitialState()
    func setCountryData(country: String, rate: Double)
    
}
