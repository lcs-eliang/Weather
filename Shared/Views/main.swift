//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation



var history: [Prediction] = []
    
    

while true {
    // Show the prediction
    print("Would you like a weather prediction? (Y/N)")
    
    //    let input = readLine()!
    
    let answer = readLine()!
    
    
    
    
    // what's in the array?
    dump(history)
    
    
    if answer == "Y" {
        
        // Generate a weather prediction
        let prediction = WeatherPredictionGenerator.getPrediction()

        
        print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
        
        print("That's \(prediction.feel.lowercased())!")

        
        
        history.append(prediction)
        
    }  else if answer == "N" {
        
        print("Would you like to see the history? (Y/N)")
        
        let answer1 = readLine()!
        
        if answer1 == "Y" {
            
            print("History: \(history)")
            
        } else if answer1 == "N" {
            
        }
        exit(0)
    }
}
