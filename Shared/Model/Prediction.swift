//
//  Prediction.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

struct Prediction {
    
    // The precise temperature for a given prediction
    let temperature: Double

    // A description of how the temperature feels
    let feel: String

    // A description of the overall weather conditions for this prediction (sunny, rainy, et cetera)
//    switch temperature {
//    case -100...0:
//        let condition: WeatherCondition
//    default:
//        let condition: WeatherCondition1
//    }
    let condition: WeatherCondition
    
}
