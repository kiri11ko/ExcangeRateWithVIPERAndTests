//
//  ExchangeListExchangeListConfiguratorTests.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import XCTest
@testable import ExcangeRate
class ExchangeListModuleConfiguratorTests: XCTestCase {

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
        let viewController = ExchangeListViewControllerMock()
        let configurator = ExchangeListModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "ExchangeListViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ExchangeListPresenter, "output is not ExchangeListPresenter")

        let presenter: ExchangeListPresenter = viewController.output as! ExchangeListPresenter
        XCTAssertNotNil(presenter.view, "view in ExchangeListPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in ExchangeListPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is ExchangeListRouter, "router is not ExchangeListRouter")

        let interactor: ExchangeListInteractor = presenter.interactor as! ExchangeListInteractor
        XCTAssertNotNil(interactor.output, "output in ExchangeListInteractor is nil after configuration")
    }

    class ExchangeListViewControllerMock: ExchangeListViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
