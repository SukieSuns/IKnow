//
//  PorfolioCard.swift
//  IKnow
//
//  Created by Administrator on 4/14/24.
//

import SwiftUI

struct PorfolioCard: View {
    
    @StateObject var stocksVM: StocksViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text("PofolioValue")
                .font(.title2)
                .bold().foregroundColor(Color.gray)
            HStack(alignment: .top){
                Text("\(String(format: "%.2f", stocksVM.stocks.map({$0.currentPrice ?? 0.0}).reduce(0.0, +)))").font(.system(size: 50)).bold().foregroundColor(.white)
                Text("2.1%").font(.title3).bold().foregroundColor(Color.lightGreen)
            }
            Spacer()
            HStack{
                Button(action:{}){
                    Text("Deposit").foregroundColor(.white).padding()
                        .padding(.horizontal)
                }.background{
                    RoundedRectangle(cornerRadius: 10).fill(Color.lightGreen)
                }
                Spacer()
                Button(action:{}){
                    Text("Withdraw").foregroundColor(.white).padding()
                        .padding(.horizontal)
                }.background{
                    RoundedRectangle(cornerRadius: 10).stroke(Color.gray)
                }
                
               
            }
            
        }
        .padding()
        .frame(height:UIScreen.main.bounds.height / 4 )
        .frame(maxWidth: .infinity)
        .background {
            RoundedRectangle(cornerRadius: 30).fill(Color.darkBlue)
        }
        
    }
}

//#Preview {
//    PorfolioCard()
//}
