//
//  ExchangeListExchangeListInteractor.swift
//  ExcangeRate
//
//  Created by generamba help on 24/06/2019.
//  Copyright © 2019 Home. All rights reserved.
//
import Foundation

class ExchangeListInteractor: ExchangeListInteractorInput {

    

    weak var output: ExchangeListInteractorOutput!
    
    func loadJSON(complition: @escaping ()->Void) {
        guard let url = URL(string: "https://revolut.duckdns.org/latest?base=USD") else { return }
        let task = URLSession.shared.dataTask(with: url) { (data, response,  error)  in
            let jsonDecoder = JSONDecoder()
            let responseModel = try? jsonDecoder.decode(JsonBase.self, from: data!)
            guard let model = responseModel else { return }
            self.output.exchange = ExchangeData(exchangeRate: model)
            print("downloadds")
            complition()
        }
        task.resume()
    }
}
