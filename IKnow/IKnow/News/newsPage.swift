//
//  newsPage.swift
//  IKnow
//
//  Created by Administrator on 4/12/24.
//

import SwiftUI

struct newsPage: View {
    
  @ObservedObject  var newsNetworkManager = NewsNetworkManager()
    
    var body: some View {
        
        NavigationView{
            List(newsNetworkManager.posts){
                post in NavigationLink(destination: newsDetailView(url: post.url) ){
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear{
            self.newsNetworkManager.fetchData()
        }
    }
}

#Preview {
    newsPage()
}

//NavigationView{
//     List(networkData.posts) {
//         post in
//         
//         NavigationLink( destination: DetailView(url: post.url)){
//             HStack {
//                 Text(String(post.points))
//                 Text(post.title)
//             }
//         }
//     }
//     .navigationBarTitle("Seasonal Cuisine")
// }
// .onAppear{
//     self.networkData.fetchData()
// }
