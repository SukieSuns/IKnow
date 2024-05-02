//
//  ContentView.swift
//  IKnow
//
//  Created by Administrator on 4/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            page1().navigationBarTitle("I know", displayMode: .inline)
        }
    }
}

#Preview {
    ContentView()
}


