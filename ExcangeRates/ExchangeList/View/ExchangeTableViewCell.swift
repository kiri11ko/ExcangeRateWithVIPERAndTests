//
//  ExchangeTableViewCell.swift
//  ExcangeRate
//
//  Created by Кирилл Лукьянов on 24/06/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

import UIKit

class ExchangeTableViewCell: UITableViewCell {
    var output: ExchangeListViewOutput!
    @IBOutlet weak var countrImageView: UIImageView!
    @IBOutlet weak var rateExchangeTextField: UITextField!
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var countryRateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func beginEditAction(_ sender: UITextField) {
        rateExchangeTextField.text = ""
    }
    
    @IBAction func calculateRate(_ sender: UITextField) {
        output.calculateRate(index: sender.tag, text: sender.text!)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
