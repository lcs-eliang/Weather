//
//  Report.swift
//  Weather
//
//  Created by Emily Liang on 2021/9/30.
//

import Foundation

struct Report: Identifiable {
    
    let id = UUID()
    
    let question: String
    
    var response: String = ""
}
