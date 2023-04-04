//
//  Weather.swift
//  WeatherApp
//
//  Created by Camila Campana on 4/4/23.
//  Copyright © 2023 Camila Campana. All rights reserved.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double?
    let humidity: Double?
    
    static var placeholder: Weather {
        return Weather(temp: nil, humidity: nil)
    }
}
