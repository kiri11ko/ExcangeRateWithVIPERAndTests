//
//  ExchangeDetailsExchangeDetailsViewTests.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import XCTest
@testable import ExcangeRate
class ExchangeDetailsViewTests: XCTestCase {
    
    var details: ExchangeDetailsViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: String(describing: ExchangeDetailsViewController.self))
        details = vc as? ExchangeDetailsViewController
        
        details.loadViewIfNeeded()
 
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testCountryLabel() {
        XCTAssertNotNil(details.exchangeRatelabel)
        XCTAssertTrue(details.exchangeRatelabel.isDescendant(of: details.view))
    
    }
    func testCountryImage() {
        XCTAssertNotNil(details.countryFlagImageView)
        XCTAssertTrue(details.countryFlagImageView.isDescendant(of: details.view))
        
    }
}
