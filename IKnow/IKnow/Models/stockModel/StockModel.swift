//
//  StockModel.swift
//  IKnow
//
//  Created by Administrator on 4/19/24.
//

import Foundation

struct StockModel: Hashable{
    var symbol: String //AAPL
    var description: String? // Apple Inc
    var currentPrice: Double? //150.20
    var percentageChange: Double?
    let candles: [CGFloat]
    
}
