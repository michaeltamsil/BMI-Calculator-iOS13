//
//  File.swift
//  BMI Calculator
//
//  Created by michael tamsil on 06/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var BMIValue: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case _ where bmiValue < 18.5:
            let color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            BMIValue = BMI(value: bmiValue, advice: "Eat more pies!", color: color )
            break
        case 18.5..<24.9:
            let color = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
            BMIValue = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: color )
            break
        case _ where bmiValue >= 24.9:
            let color = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
            BMIValue = BMI(value: bmiValue, advice: "Eat less pies!", color: color )
            break
        default: break
            
        }
    }
    
    func getBMIValue() -> Float{
        return BMIValue?.value ?? 0.0
    }
    
    func getAdvice() -> String {
        return BMIValue?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return BMIValue?.color ??  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
