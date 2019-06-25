//
//  ExcangeRateTests.swift
//  ExcangeRateTests
//
//  Created by Кирилл Лукьянов on 24/06/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

protocol ExchangeListViewOutput {

    /**
        @author generamba help
        Notify presenter that view is ready
    */
    func calculateRate(index: Int, text: String) 
    var exchange: ExchangeData? { get }
    var sectionCount: Int { get }
    func viewIsReady()
    func openDetailsView(index: Int)
}
