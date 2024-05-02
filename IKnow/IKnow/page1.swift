//
//  page1.swift
//  IKnow
//
//  Created by Administrator on 4/12/24.
//

import SwiftUI

struct page1: View {
    var body: some View {
        
    
        ZStack {
            Image("page1 Background")
                .imageScale(.large)
                .foregroundStyle(.tint)
            NavigationLink(destination: page2()) {
                Text("I Know").foregroundColor(.white).fontWeight(.bold).font(.system(size: 50))
            }
        }
    }
}

#Preview {
    page1()
}
