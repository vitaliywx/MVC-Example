//
//  Currency.swift
//  MVC-Example
//
//  Created by Vitalii Homoniuk on 19.11.2022.
//

import Foundation

struct Stocks {
    var name: String
    var ticker: String
    var value: Double
}

extension Stocks {
    static var testData = [
        Stocks(name: "Apple inc.", ticker: "AAPL", value: 151.29),
        Stocks(name: "Microsoft Corporation", ticker: "MSFT", value: 241.22),
        Stocks(name: "Amazon.com, Inc.", ticker: "AMZN", value: 94.14),
        Stocks(name: "Meta Platforms, Inc.", ticker: "META", value: 112.05),
        Stocks(name: "Alibaba Group Holding Limited", ticker: "BABA", value: 80.48)
    ]
}
