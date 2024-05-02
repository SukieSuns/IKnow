//
//  page2.swift
//  IKnow
//
//  Created by Administrator on 4/12/24.
//

import SwiftUI

struct page2: View {
    var body: some View {
        ZStack{
            Image("page2 Background")
            
            VStack{
                Text("I care what you care.").font(.title).bold().foregroundColor(.white).padding(20)
                
                Image("I know you").resizable().frame(width: 275.0, height: 200.0).aspectRatio(contentMode: .fit).cornerRadius(20).padding()
                
                
                
                
                HStack {
                    VStack{
                        NavigationLink(destination: weatherPage()){
                            Image("weather").resizable().frame(width:60, height: 60).cornerRadius(15)
                        }
                        Text("Cloma").bold().font(.title3).foregroundColor(.white)
                    }
                    .padding()
    
                    VStack{
                        NavigationLink(destination: newsPage()){
                            Image("news").resizable().frame(width:60, height: 60).cornerRadius(15)
                        }
                        Text("Hacker").bold().font(.title3).foregroundColor(.white)
                    }
                    .padding()
                    VStack{
                        NavigationLink(destination:stockContentView()){
                            Image("stock").resizable().frame(width:60, height: 60).cornerRadius(15)
                        }
                        Text("Stock").bold().font(.title3).foregroundColor(.white)
                    }
                    .padding()
                   
                   
                }
                .padding()
                
                
                
            }
        }
    }
}
#Preview {
    page2()
}
