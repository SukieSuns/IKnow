//
//  newsWebview.swift
//  IKnow
//
//  Created by Administrator on 4/12/24.
//

import SwiftUI
import WebKit
import Foundation

//struct newsWebview: View {
//    var body: some View {
//       
//    }
//}
//
//#Preview {
//    newsWebview()
//}

struct newsWebView: UIViewRepresentable {
    
    let urlString: String?
    
    typealias UIViewType = WKWebView

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

//struct WebView: UIViewRepresentable {
//    
//    let urlString: String?
//    
//    typealias UIViewType = WKWebView
//    
//
//    func makeUIView(context: Context) -> WKWebView {
//        return WKWebView()
//    }
//    
//    func updateUIView(_ uiView: WKWebView, context: Context) {
//        
//        if let safeString = urlString {
//            if let url = URL(string: safeString){
//                let request = URLRequest(url: url)
//                uiView.load(request)
//            }
//        }
//    }
//    
//}
