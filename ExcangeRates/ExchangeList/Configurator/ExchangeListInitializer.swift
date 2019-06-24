//
//  ExchangeListExchangeListInitializer.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class ExchangeListModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var exchangelistViewController: ExchangeListViewController!

    override func awakeFromNib() {

        let configurator = ExchangeListModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: exchangelistViewController)
    }

}
