//
//  WeatherManager.swift
//  IKnow
//
//  Created by Administrator on 4/12/24.
//

import Foundation

class WeatherManager: ObservableObject{
    
    @Published  
    
    var weatherPosts = [weatherPost]()
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=ef910ae1f1daed6e23ba3ccab79b7b37&units=metric&q="
    
    func fetchWeather(cityName: String){
        if let url = URL(string: "\(weatherURL)\(cityName)"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) {(data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                            let weatherResults = try decoder.decode(weatherresults.self, from: safeData)
                            self.weatherPosts = weatherResults.weatherposts
                          } catch{
                                print(error)
                            }
                        
//                        let weatherPost = self.parseJSON(weatherData: safeData)
                    }
                }
            }
            task.resume()
        }
    }
    
//    func parseJSON(weatherData: Data)  {
//        let decoder = JSONDecoder()
//        do{
//            let weatherPosts = try decoder.decode(weatherPost.self, from: weatherData)
//            
//            let id = weatherPosts.weather[0].id
//            let temp = weatherPosts.main.temp
//            let name = weatherPosts.name
//            let description = weatherPosts.weather[3].description
//            
//            let weatherConditionModel = weatherConditionModel(weatherCity: name, weatherTemp: temp, weatherDes: description, weatherId: id)
//            
//         
//           
//        }catch{
//            print(error)
//        }
//        
//    }
}
    
    
    
    //if let safeData = data{
    //    if let weather = self.parseJSON(weatherData: safeData){
    //                        let weatherVC = WeatherViewController()
    //                        weatherVC.didUpdateWeather(weather)
    //        delegate?.didUpdateWeather(self, weather:weather)
    //    }
    //                    let dataString = String(data: safeData, encoding: .utf8)
    //                    print(dataString!)
    //                    parseJSON(weatherData: safeData)
    //}
    //}
    //
    //task.resume()
    //}
    //}
    
    //func parseJSON(weatherData: Data) -> WeatherModel? {
    //
    //let decoder = JSONDecoder()
    //do{
    //let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
    //let id = decodedData.weather[0].id
    //let temp = decodedData.main.temp
    //let name = decodedData.name
    //
    //let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
    //return weather
    //
    //}
    //catch{
    //delegate?.didFailWithError(error: error)
    ////            print(error)
    //return nil
    //}
    //}

