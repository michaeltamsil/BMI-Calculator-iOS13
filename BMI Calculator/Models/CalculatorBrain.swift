//
//  File.swift
//  BMI Calculator
//
//  Created by michael tamsil on 06/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var BMIValue: Float?
    
    mutating func calculateBMI(height: Float, weight: Float){
        BMIValue = weight / pow(height, 2)
    }
    
    func getBMIValue() -> Float{
        return BMIValue!
    }
}
