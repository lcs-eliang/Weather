//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

class WeatherViewModel: ObservableObject {
    
    @Published var reports: [Prediction] = [] //empty array
    
    func weatherReportFor() -> Prediction {
        
        let currentReport = WeatherPredictionGenerator.getPrediction()
        
        reports.append(currentReport)
        
        return currentReport
        
    }
}

