//
//  StockCell.swift
//  IKnow
//
//  Created by Administrator on 4/15/24.
//

import SwiftUI

struct StockCell: View {
    let stock: String
    let description: String

    var body: some View {
        HStack {
            Text(stock).font(.title3).bold().foregroundColor(Color.darkBlue)
            Spacer()
            Text(description).foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
    }
}

#Preview {
    StockCell(stock:"AAPL", description: "Apple computer")
}
