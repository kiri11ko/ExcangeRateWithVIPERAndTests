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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = output.exchange?.exchangeList[indexPath.row] ?? ""
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        output.openDetailsView()
    }
}

