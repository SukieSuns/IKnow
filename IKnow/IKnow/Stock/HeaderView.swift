//
//  stockPage.swift
//  IKnow
//
//  Created by Administrator on 4/14/24.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var showSheet: Bool
    
    var body: some View {
        HStack {
            Text("My Stocks").font(.largeTitle).fontWeight(.bold).foregroundColor(Color.darkBlue)
            Spacer()
            Button(action:{showSheet.toggle()}){
                Image(systemName: "magnifyingglass.circle.fill").accentColor(Color.darkBlue).font(.system(size: 40))
            }
        }
       
    }
}

                            

