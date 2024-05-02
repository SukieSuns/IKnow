//
//  stockCard.swift
//  IKnow
//
//  Created by Administrator on 4/14/24.
//

import SwiftUI
import UIKit

struct stockCard: View {
    
    let stockModel: StockModel
    @State private var logoStr: String = ""
    
    var body: some View {
        
        VStack {
            HStack{
                AsyncImage(url: URL(string: "https://logo.clearbit.com/\(logoStr).com")){
                    image in image.resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50)
                }
            placeholder: {
                ProgressView()
            }
            .cornerRadius(10)
//                Image(systemName: "appletv.fill")
                    
                VStack{
                    Text(stockModel.symbol).bold().font(.title3)
                    Text(stockModel.description ?? "").foregroundColor(.gray).lineLimit(1)
                        .truncationMode(.tail)
                }
                Spacer()
                Text(
                    "\(((stockModel.percentageChange ?? 0.0) >= 0.0) ? "+" : " ")"
                    +
                    
                    "\(String(format: "%.2f", stockModel.percentageChange ?? 0.0))%").foregroundColor((stockModel.percentageChange ?? 0.0) >= 0.0 ? Color.lightGreen: Color.red).bold().font(.title)
            }
            Spacer()
            HStack{
                Text("\(String(format: "%.2f", stockModel.currentPrice ?? 0.0))").bold().font(.title)
                Spacer()
                lineChart(data: stockModel.candles.normalizedValues).stroke((stockModel.percentageChange ?? 0.0) >= 0.0 ? Color.lightGreen: Color.red, lineWidth: 1.5)
            }
            
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 10).stroke(.gray)
        }
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(width:.infinity)
        .onAppear {
        if let logoStr = stockModel.description?.components(separatedBy: "").first {
            self.logoStr = logoStr.lowercased()
        }
    }
        }
    
}


//#Preview {
//    stockCard(stockModel: <#StockModel#>)
//}
