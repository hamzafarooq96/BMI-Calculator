//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Hamza Farooq on 30/06/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        
        return bmiTo1DecimalPlace
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float){
        
        bmi = weight / (height * height)
        
    }
}
