//
//  searchStockView.swift
//  IKnow
//
//  Created by Administrator on 4/15/24.
//

import SwiftUI

struct searchStockView: View {
    @State private var searchSymbol: String = ""
    var body: some View {
        VStack {
            TextField("Stock Symbol Ticker", text: $searchSymbol).padding().background{
                RoundedRectangle(cornerRadius: 10, style: .continuous).stroke( Color.darkBlue, lineWidth: 1).padding().textInputAutocapitalization(.never)
            }
                Divider()
                
                StockCell(stock:"AAPL", description:"Apple Computers")
                Divider()
                
                StockCell(stock:"AAPL", description:"Apple Computers")
                Divider()
                
                StockCell(stock:"AAPL", description:"Apple Computers")
                Divider()
                
                StockCell(stock:"AAPL", description:"Apple Computers")
                Divider()
                
                
                Spacer()
            }
        }
    }


#Preview {
    searchStockView()
}
