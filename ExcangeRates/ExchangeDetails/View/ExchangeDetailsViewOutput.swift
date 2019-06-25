//
//  ExchangeDetailsExchangeDetailsViewOutput.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

protocol ExchangeDetailsViewOutput {

    /**
        @author generamba help
        Notify presenter that view is ready
    */
    var countryData: CountryData? {get set}
    func viewIsReady()
    func test() 
}
