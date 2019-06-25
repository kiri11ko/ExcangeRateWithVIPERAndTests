//
//  ExchangeDetailsExchangeDetailsViewController.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import UIKit

class ExchangeDetailsViewController: UIViewController, ExchangeDetailsViewInput {
  
    

    @IBOutlet weak var exchangeRatelabel: UILabel!
    @IBOutlet weak var countryFlagImageView: UIImageView! 
    var output: ExchangeDetailsViewOutput!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
    
    func setCountryData(country: String, rate: Double) {
        exchangeRatelabel.text  = String(rate)
        countryFlagImageView.image = UIImage(named: country)
    }

    // MARK: ExchangeDetailsViewInput
    func setupInitialState() {
    }
}
