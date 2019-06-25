//
//  ExchangeDetailsExchangeDetailsInitializer.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class ExchangeDetailsModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var exchangedetailsViewController: ExchangeDetailsViewController!

    override func awakeFromNib() {

        let configurator = ExchangeDetailsModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: exchangedetailsViewController)
    }

}
