//
//  weatherPage.swift
//  IKnow
//
//  Created by Administrator on 4/13/24.
//

import SwiftUI

struct weatherPage: View {
    
   @State private var CityName = ""
   @ObservedObject var weatherManager = WeatherManager()
    
   let URL = "https://api.openweathermap.org/data/2.5/weather?appid=ef910ae1f1daed6e23ba3ccab79b7b37&units=metric&q="
   
    
    var body: some View {
        let url = "\(URL)\(CityName)"
        
        ZStack{
            Image("weather_light_background").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
            VStack{
                Image("\(weatherPost.self)")
                Text("Hello")
                TextField("Enter city name", text: $CityName).multilineTextAlignment(.center)
                    .shadow(radius: 8)
                    .foregroundColor(.white)
                    .background(.white)
                    .font(.largeTitle)
                    .keyboardType(.default)
                    .submitLabel(.next)
                    .clipShape(.capsule).frame(width: 350, height: 150)
                NavigationLink(destination: weatherDetailView(CityName: CityName, url: url) ){
                   
                }
            }
            .padding()
        }
    }
}

#Preview {
    weatherPage()
}
