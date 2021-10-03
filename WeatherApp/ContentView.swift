//
//  ContentView.swift
//  WeatherApp
//
//  Created by Emily Liang on 2021/10/2.
//

import SwiftUI

struct ContentView: View {
    
    // Make an instance of the view model to store questions and advice
    @ObservedObject var viewModel: WeatherViewModel

    // Stores the current question being asked
    @State private var input = ""
    
    // Stores the response to the given question
    @State private var output = ""
    
    var body: some View {
        VStack {
            TextField("Question",
                      text: $input,
                      prompt: Text("Would you like a weather prediction?"))

            // Get prediction
            Button(action: {
                print("weather prediction button was pressed")
//                output = viewModel.weatherReportFor(givenQuery: input)
            }, label: {
                Text("Predict")
            })

            // Advice given
            Text(output)
                .multilineTextAlignment(.center)
                // Multiple lines as needed
                .fixedSize(horizontal: false, vertical: true)
            
        }
        .navigationTitle("Magic 8 Ball")
    }
}

