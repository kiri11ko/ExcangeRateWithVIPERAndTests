//
//  ExchangeDetailsExchangeDetailsConfiguratorTests.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import XCTest
@testable import ExcangeRate
class ExchangeDetailsModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = ExchangeDetailsViewControllerMock()
        let configurator = ExchangeDetailsModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "ExchangeDetailsViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ExchangeDetailsPresenter, "output is not ExchangeDetailsPresenter")

        let presenter: ExchangeDetailsPresenter = viewController.output as! ExchangeDetailsPresenter
        XCTAssertNotNil(presenter.view, "view in ExchangeDetailsPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ExchangeDetailsPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ExchangeDetailsRouter, "router is not ExchangeDetailsRouter")

        let interactor: ExchangeDetailsInteractor = presenter.interactor as! ExchangeDetailsInteractor
        XCTAssertNotNil(interactor.output, "output in ExchangeDetailsInteractor is nil after configuration")
    }

    class ExchangeDetailsViewControllerMock: ExchangeDetailsViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
