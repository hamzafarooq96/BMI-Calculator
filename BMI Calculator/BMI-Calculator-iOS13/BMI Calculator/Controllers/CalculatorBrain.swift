//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Hamza Farooq on 30/06/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
         return bmi?.advice ?? "No Advice"
    }
   
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        
         let bmivalue = weight / (height * height)
        
        if bmivalue < 18.5{
            
            bmi = BMI(value: bmivalue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmivalue < 24.9{
            bmi = BMI(value: bmivalue, advice: "Fir as a fiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else{
            bmi = BMI(value: bmivalue, advice: "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
       
        
    }
}
