//
//  ExcangeRateTests.swift
//  ExcangeRateTests
//
//  Created by Кирилл Лукьянов on 24/06/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

import Foundation

struct JsonBase : Codable {
	let base : String?
	let date : String?
    var rates : Rates?

	enum CodingKeys: String, CodingKey {

		case base = "base"
		case date = "date"
		case rates = "rates"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		base = try values.decodeIfPresent(String.self, forKey: .base)
		date = try values.decodeIfPresent(String.self, forKey: .date)
		rates = try values.decodeIfPresent(Rates.self, forKey: .rates)
	}

}
