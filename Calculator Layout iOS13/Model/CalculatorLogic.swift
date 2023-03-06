//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Toni Lozano Fernández on 6/3/23.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    private var intermediateCalculator: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ n: Double) {
        number = n
    }
    
    mutating func calculate(symbol: String) -> Double? {
        if let n = number {
            switch symbol {
            case "%":
                return n * 0.01
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "=":
                return performTwoNumCalculation(n2: n)
            default:
                intermediateCalculator = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    mutating func performTwoNumCalculation(n2: Double) -> Double? {
        if let n1 = intermediateCalculator?.n1,
            let operation = intermediateCalculator?.calcMethod {
            
            switch operation {
            case "÷":
                return n1 / n2
            case "×":
                return n1 * n2
            case "-":
                return n1 - n2
            case "+":
                return n1 + n2
            default:
                print("Invalid operation")
            }
        }
        return nil
    }
}
