//
//  newsDetailView.swift
//  IKnow
//
//  Created by Administrator on 4/12/24.
//

import SwiftUI

struct newsDetailView: View {
    
    let url: String?
    
    var body: some View {
        
        newsWebView(urlString: url)
    }
}

#Preview {
    newsDetailView(url: "https://www.google.com")
}
