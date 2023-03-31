//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Amit Tandel on 3/31/23.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = 703 * weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Your BMI is too low, you need to eat more calories!", color: UIColor.systemTeal )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Your BMI is within range, keep it up!", color: UIColor.systemGreen )
        } else {
            bmi = BMI(value: bmiValue, advice: "Your BMI is too high, you need to eat less calories!", color: UIColor.systemRed)
        }
        
            
        
    }
}
