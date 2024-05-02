//
//  watchList.swift
//  IKnow
//
//  Created by Administrator on 4/14/24.
//

import SwiftUI

struct watchList: View {
    
    @StateObject var stocksVM: StocksViewModel
    
    var body: some View {
        
             HStack{
                 Text("Watchlist").font(.title).bold().foregroundColor(.darkBlue)
                 Spacer()
             }
             
        ScrollView {
            VStack {
                ForEach(stocksVM.stocks, id: \.self){
                    stock in stockCard(stockModel: stock)
                }
            }
        }
        .padding(3)
    }
}

//#Preview {
//    watchList()
//}
