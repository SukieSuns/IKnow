//
//  newsNetworkManager.swift
//  IKnow
//
//  Created by Administrator on 4/12/24.
//

import Foundation


class NewsNetworkManager: ObservableObject{
    
    //    @Published var posts = [post]()
    //
    //    func fetchData(){
    //        if let url = URL(string:"https://hn.algolia.com/api/v1/search?tags=front_page"){
    //           let session = URLSession(configuration: .default)
    //           let task = session.dataTask(with: url) { (data, response, error) in
    //               if error == nil{
    //                   let decoder = JSONDecoder()
    //                   if let safeData = data {
    //                       do {
    //                           let results = try decoder.decode(Results.self, from: safeData)
    //                           self.posts = results.hits
    //                       }catch{
    //                           print(error)
    //                       }
    //                   }
    //               }
    //            }
    //            task.resume()
    //
    //        }
    //    }
    
    
    
    @Published var posts = [post]()
    
     func fetchData(){
         if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
             let session = URLSession(configuration: .default)
             let task = session.dataTask(with: url) { (data, response, error) in
                 if error == nil {
                     let decoder = JSONDecoder()
                     if let safeData = data {
                         do {
                            let results = try decoder.decode(Results.self, from: safeData)
                             self.posts = results.hits
                         } catch {
                             print(error)
                         }
                     }
                 }
             }
             task.resume()
         }
     }
}
