//
//  WeatherModel.swift
//  Clima
//
//  Created by Grga Jovanovski on 01.08.2024..
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.rain.fill"
        case 500...531:
            return "cloud.heavyrain.fill"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.fill"
        default:
            return "questionmark.app.fill"
        }
    }

}
