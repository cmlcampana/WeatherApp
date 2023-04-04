//
//  Webservice.swift
//  WeatherApp
//
//  Created by Camila Campana on 4/4/23.
//  Copyright © 2023 Camila Campana. All rights reserved.
//

import Foundation
import Combine

final class Webservice {
    
    func fetchWeather(city: String) -> AnyPublisher<Weather, Error> {
        guard let url = URL(string: Constants.URLs.weather(city: city)) else {
            fatalError("Invalid URL")
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: WeatherResponse.self, decoder: JSONDecoder())
            .map { $0.main }
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
