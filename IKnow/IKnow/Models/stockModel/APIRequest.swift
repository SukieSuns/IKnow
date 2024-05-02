//
//  APIRequest.swift
//  IKnow
//
//  Created by Administrator on 4/16/24.
//

import Foundation

class APIRequest {
    static let instance = APIRequest()
    
    private var url = "https://finnhub.io/api/v1/"
    private var token = "&token=cofi039r01qk1gt8ma2gcofi039r01qk1gt8ma30"
    
    public func getSymbolQuote(symbol: String, handler: @escaping(_ returnedQuote: Quote?) -> ()) {
        let query: String = "quote?Symbol =\(symbol)"
        let url = URL(string: url + query + token)
        
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error{
                    print("error getting quote: \(error)")
                    return
                }
                guard let quoteData = data else{
                    print("symbol search data not valid")
                    return
                }
                
                let returnedQuote = try? JSONDecoder().decode(Quote.self, from: quoteData)
                handler(returnedQuote)
            }
            task.resume()
        }
    }
    public func getSymbolLookup(searchQuery: String, handler: @escaping(_ returnedLookup: StockSymbolSearch?) -> ()) {
        let query: String = "search?q=\(searchQuery)"
        
        let url = URL(string: url + query + token)
        
        if let url = url {
            let task = URLSession.shared.dataTask(with: url){
                data, response, error in
                if let error = error {
                    print("error searching for symbol: \(error)")
                    return
                }else{
                    guard let searchData = data else{
                        print("symbol search not valid")
                        return
                    }
                    
                    let returnedSymbols = try?  JSONDecoder().decode(StockSymbolSearch.self, from: searchData)
                    handler(returnedSymbols)
                }
            }
            task.resume()
        }
        
    }
    
    public func getCandles(symbol: String, hourLength: Int, handler: @escaping(_ returnedCandles: Candles?) -> ()) {
        let endDate = Int(Date().timeIntervalSince1970)
        let startDate = Int(Calendar.current.date(byAdding: .day, value: -(hourLength), to: Date())?.timeIntervalSince1970 ?? Date().timeIntervalSince1970)
        let query = "stock/candle?symbol=\(symbol)&from(startDate)&to=\(endDate)"
        let url = URL(string:url + query + token)
        if let url = url{
            let task = URLSession.shared.dataTask(with:url){
                data, response, error in
                if let error = error{
                    print("error getting candles: \(error)")
                }else{
                    guard let searchData = data else{
                        print("candle data not valid")
                        return
                    }
                    
                    let returnedCandles = try? JSONDecoder().decode(Candles.self, from: searchData)
                    handler(returnedCandles)
                }
            }
            task.resume()
        
        }
    }
    
}
