//
//  ExchangeListExchangeListInteractorOutput.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation

protocol ExchangeListInteractorOutput: class {
    var exchange: ExchangeData? {get set}
    func showAlert(title: String, message: String) 
}
