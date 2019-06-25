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
    @IBOutlet weak var countrImageView: UIImageView! {
        didSet {
            countrImageView.layer.borderWidth = 1
            countrImageView.layer.masksToBounds = false
            countrImageView.layer.borderColor = UIColor.white.cgColor
            countrImageView.layer.cornerRadius = countrImageView.frame.height / 2
            countrImageView.clipsToBounds = true
        }
    }
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
