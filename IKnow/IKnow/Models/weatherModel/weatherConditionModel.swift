//
//  weatherConditionModel.swift
//  IKnow
//
//  Created by Administrator on 4/13/24.
//

import Foundation

struct weatherConditionModel{
    let weatherCity: String
    let weatherTemp: Double
    let weatherDes: String
    let weatherId: Int
    
    var conditionId: String{
        switch weatherId{
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
//        var conditionTemp: String {
//            return String(weatherTemp)
//        }
//    
}
