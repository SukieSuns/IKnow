//
//  stockContentView.swift
//  IKnow
//
//  Created by Administrator on 4/14/24.
//

import SwiftUI

struct stockContentView: View {
    @State private var isShowingStockSearchSheet: Bool = false
    
    @StateObject private var stocksVM: StocksViewModel = StocksViewModel()
    
    var body: some View {
        VStack {
            HeaderView(showSheet:$isShowingStockSearchSheet).padding()
            
            PorfolioCard(stocksVM: stocksVM).padding()
            watchList(stocksVM: stocksVM).padding()
           
            .padding()
            .padding(3)
            .edgesIgnoringSafeArea(.bottom)
            .sheet(isPresented: $isShowingStockSearchSheet){
                searchStockView()
            }
            .onAppear{
                APIRequest.instance.getSymbolQuote(symbol:"AAPL"){
                    returnedQuote in print(returnedQuote)
                }
            }
        }
    }
}

#Preview {
    stockContentView()
}
