//
//  weatherData.swift
//  IKnow
//
//  Created by Administrator on 4/12/24.
//

import Foundation

struct weatherresults: Decodable{
    let weatherposts: [weatherPost]
}

struct weatherPost: Decodable{
    let weather:[Weather]
    let main: Main
    let name: String
}

struct Weather: Decodable, Identifiable{
    var id: Int
    var conditionId: String{
        switch id{
        case 200 ... 232:
            return "cloud.bolt"
        case 300 ... 321:
            return "cloud.drizzle"
        case 500 ... 531:
            return "cloud.rain"
        case 600 ... 622:
            return "cloud.snow"
        case 701 ... 781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801 ... 804:
            return "cloud.bolt"
        default:
            return "cloud"
            
        }
    }
    let main: String
    let description: String
}

struct Main: Decodable{
    let temp: Double
    var conditionTemp: String {
        return String(temp)
    }
}


