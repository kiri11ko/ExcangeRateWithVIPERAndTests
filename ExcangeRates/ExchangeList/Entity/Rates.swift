//
//  ExcangeRateTests.swift
//  ExcangeRateTests
//
//  Created by Кирилл Лукьянов on 24/06/2019.
//  Copyright © 2019 Кирилл Лукьянов. All rights reserved.
//

import Foundation
struct Rates : Codable {
    var list: [String: Double] = ["USD":1]
	let aUD : Double?
	let bGN : Double?
	let bRL : Double?
	let cAD : Double?
	let cHF : Double?
	let cNY : Double?
	let cZK : Double?
	let dKK : Double?
	let gBP : Double?
	let hKD : Double?
	let hRK : Double?
	let hUF : Double?
	let iDR : Double?
	let iLS : Double?
	let iNR : Double?
	let iSK : Double?
	let jPY : Double?
	let kRW : Double?
	let mXN : Double?
	let mYR : Double?
	let nOK : Double?
	let nZD : Double?
	let pHP : Double?
	let pLN : Double?
	let rON : Double?
	let rUB : Double?
	let sEK : Double?
	let sGD : Double?
	let tHB : Double?
	let tRY : Double?
	let zAR : Double?
	let eUR : Double?

	enum CodingKeys: String, CodingKey {

		case aUD = "AUD"
		case bGN = "BGN"
		case bRL = "BRL"
		case cAD = "CAD"
		case cHF = "CHF"
		case cNY = "CNY"
		case cZK = "CZK"
		case dKK = "DKK"
		case gBP = "GBP"
		case hKD = "HKD"
		case hRK = "HRK"
		case hUF = "HUF"
		case iDR = "IDR"
		case iLS = "ILS"
		case iNR = "INR"
		case iSK = "ISK"
		case jPY = "JPY"
		case kRW = "KRW"
		case mXN = "MXN"
		case mYR = "MYR"
		case nOK = "NOK"
		case nZD = "NZD"
		case pHP = "PHP"
		case pLN = "PLN"
		case rON = "RON"
		case rUB = "RUB"
		case sEK = "SEK"
		case sGD = "SGD"
		case tHB = "THB"
		case tRY = "TRY"
		case zAR = "ZAR"
		case eUR = "EUR"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		aUD = try values.decodeIfPresent(Double.self, forKey: .aUD)
		bGN = try values.decodeIfPresent(Double.self, forKey: .bGN)
		bRL = try values.decodeIfPresent(Double.self, forKey: .bRL)
		cAD = try values.decodeIfPresent(Double.self, forKey: .cAD)
		cHF = try values.decodeIfPresent(Double.self, forKey: .cHF)
		cNY = try values.decodeIfPresent(Double.self, forKey: .cNY)
		cZK = try values.decodeIfPresent(Double.self, forKey: .cZK)
		dKK = try values.decodeIfPresent(Double.self, forKey: .dKK)
		gBP = try values.decodeIfPresent(Double.self, forKey: .gBP)
		hKD = try values.decodeIfPresent(Double.self, forKey: .hKD)
        list[CodingKeys.hKD.rawValue] = hKD
		hRK = try values.decodeIfPresent(Double.self, forKey: .hRK)
		hUF = try values.decodeIfPresent(Double.self, forKey: .hUF)
		iDR = try values.decodeIfPresent(Double.self, forKey: .iDR)
		iLS = try values.decodeIfPresent(Double.self, forKey: .iLS)
		iNR = try values.decodeIfPresent(Double.self, forKey: .iNR)
		iSK = try values.decodeIfPresent(Double.self, forKey: .iSK)
		jPY = try values.decodeIfPresent(Double.self, forKey: .jPY)
        list[CodingKeys.jPY.rawValue] = jPY
		kRW = try values.decodeIfPresent(Double.self, forKey: .kRW)
		mXN = try values.decodeIfPresent(Double.self, forKey: .mXN)
		mYR = try values.decodeIfPresent(Double.self, forKey: .mYR)
		nOK = try values.decodeIfPresent(Double.self, forKey: .nOK)
		nZD = try values.decodeIfPresent(Double.self, forKey: .nZD)
		pHP = try values.decodeIfPresent(Double.self, forKey: .pHP)
		pLN = try values.decodeIfPresent(Double.self, forKey: .pLN)
		rON = try values.decodeIfPresent(Double.self, forKey: .rON)
		rUB = try values.decodeIfPresent(Double.self, forKey: .rUB)
        list[CodingKeys.rUB.rawValue] = rUB
		sEK = try values.decodeIfPresent(Double.self, forKey: .sEK)
		sGD = try values.decodeIfPresent(Double.self, forKey: .sGD)
		tHB = try values.decodeIfPresent(Double.self, forKey: .tHB)
		tRY = try values.decodeIfPresent(Double.self, forKey: .tRY)
		zAR = try values.decodeIfPresent(Double.self, forKey: .zAR)
		eUR = try values.decodeIfPresent(Double.self, forKey: .eUR)
        list[CodingKeys.eUR.rawValue] = eUR
	}

}
