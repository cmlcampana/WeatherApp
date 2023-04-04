//
//  Constants.swift
//  WeatherApp
//
//  Created by Camila Campana on 4/4/23.
//  Copyright © 2023 Camila Campana. All rights reserved.
//

import Foundation

struct Constants {
    struct URLs {
        static func weather(city: String) -> String {
            "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=7d2dd8c9c5578b741c7735ad3f0d39ea&units=imperial"
        }
    }
    
}
