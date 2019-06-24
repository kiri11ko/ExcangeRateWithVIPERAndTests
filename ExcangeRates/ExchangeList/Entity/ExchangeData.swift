//
//  ExchangeData.swift
//  ExcangeRate
//
//  Created by Кирилл Лукьянов on 24/06/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

import Foundation

struct ExchangeData {
    var exchangeRate: JsonBase
    var exchangeList: [String]
    init(exchangeRate: JsonBase) {
        self.exchangeRate = exchangeRate
        self.exchangeList = ["USD", "EUR", "RUB", "HKD", "JPY"]
    }
}
