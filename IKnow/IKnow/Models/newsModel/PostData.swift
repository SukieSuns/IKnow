//
//  PostData.swift
//  IKnow
//
//  Created by Administrator on 4/12/24.
//

import Foundation

struct Results: Decodable{
    let hits: [post]
}

struct post: Decodable, Identifiable {
    var id: String {
       return objectID
    }
    let objectID: String
    let title: String 
    let points: Int
    let url: String
}
