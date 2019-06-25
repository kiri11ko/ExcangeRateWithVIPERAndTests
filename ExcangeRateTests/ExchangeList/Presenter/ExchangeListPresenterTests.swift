//
//  ExchangeListExchangeListPresenterTests.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import XCTest
@testable import ExcangeRate
class ExchangeListPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: ExchangeListInteractorInput {
        func loadJSON() {
            
        }
        
        

    }

    class MockRouter: ExchangeListRouterInput {
        var view: ExchangeListViewController!
        
        func openDetailsView(data: CountryData) {
            
        }
        

    }

    class MockViewController: ExchangeListViewInput {
        
        func showAlert(title: String, message: String) {
            
        }
        
        func refreshTableview() {
            
        }
        
        func refreshTableviewRows() {
            
        }
        
        

        func setupInitialState() {

        }
    }
}
