//
//  weatherWebView.swift
//  IKnow
//
//  Created by Administrator on 4/13/24.
//

import SwiftUI
import WebKit
import Foundation

struct weatherWebView: UIViewRepresentable {
    
    let urlString: String?
    
    typealias UIViewType = WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}


