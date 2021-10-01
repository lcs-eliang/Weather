//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation





while true {
    // Show the prediction
    print("Would you like a weather prediction? (Y/N)")
    
//    let input = readLine()!
    
    let answer = readLine()!

    // Generate a weather prediction
    let prediction = WeatherPredictionGenerator.getPrediction()
    
    if answer == "Y" {
        print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")

        print("That's \(prediction.feel.lowercased())!")

        
    }  else if answer == "N" {
        exit(0)
        }
}
