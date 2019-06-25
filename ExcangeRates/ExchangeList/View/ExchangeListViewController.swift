//
//  ExcangeRateTests.swift
//  ExcangeRateTests
//
//  Created by Кирилл Лукьянов on 24/06/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

import UIKit

class ExchangeListViewController: UITableViewController, ExchangeListViewInput {

    var output: ExchangeListViewOutput!
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        self.refreshControl?.addTarget(self, action: #selector(refreshJsonData), for: UIControl.Event.valueChanged)
    }
    
    func refreshTableview() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
            self.refreshControl?.endRefreshing()
        }
        
    }
    func refreshTableviewRows() {
        DispatchQueue.main.async {
            self.tableView.beginUpdates()
            guard var indexPaths = self.tableView.indexPathsForVisibleRows else { return }
            indexPaths.removeFirst()
            self.tableView.reloadRows(at: indexPaths, with: .none)
            self.tableView.endUpdates()
        }
        
    }
    func showAlert(title: String, message: String) {
        DispatchQueue.main.async { [weak self] in
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(action)
            self!.present(alert, animated: true, completion: nil)
        }
        
    }
    @objc func refreshJsonData(refreshControl: UIRefreshControl) {
        print("pull")
        output.viewIsReady()
    }

    func setupInitialState() {
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return output.exchange?.exchangeList.count ?? 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(UINib(nibName: "ExchangeTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ExchangeTableViewCell
        cell.output = self.output
//        cell.textLabel?.text = output.exchange?.exchangeList[indexPath.row] ?? ""
        let rate = output.exchange?.exchangeList[indexPath.row] ?? ""
        cell.countrImageView.image = UIImage(named: rate)
        cell.countryRateLabel.text = rate
        cell.countryNameLabel.text = output.exchange?.countryList[indexPath.row] ?? ""
        cell.rateExchangeTextField.tag = indexPath.row
        cell.rateExchangeTextField.text = String(format: "%.2f", output.exchange?.exchangeRate.rates?.list[rate] ?? 0) 
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        output.openDetailsView(index: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "details" {
            let destinationVC = segue.destination as! ExchangeDetailsViewController
            destinationVC.output.countryData = sender as! CountryData
        }
        
    }
}

