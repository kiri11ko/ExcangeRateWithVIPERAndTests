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

    }
    func refreshTableview() {
        DispatchQueue.main.async {
            print("refresh")
            self.tableView.reloadData()
            self.tableView.refreshControl?.endRefreshing()
        }
        
    }
    @objc func refreshJsonData() {
        print("pull")
        output.viewIsReady()
    }

    func setupInitialState() {
        tableView.refreshControl!.addTarget(self, action: #selector(refreshJsonData), for: .valueChanged)
        
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
}

