//
//  weatherDetailView.swift
//  IKnow
//
//  Created by Administrator on 4/12/24.
//

import SwiftUI

struct weatherDetailView: View {
    
    var CityName: String?
    let url: String?
    
    var body: some View {
                weatherWebView(urlString: url)
        }
    }


#Preview {
    weatherDetailView(CityName: "London", url: "https://www.google.com")
}
