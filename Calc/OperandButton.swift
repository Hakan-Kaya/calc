//
//  OperandButton.swift
//  Calc
//
//  Created by Hakan Kaya on 9.10.2023.
//

import SwiftUI

struct OperandButton: View {
    @Binding var previousNumber: Int
    @Binding var currentNumber: String
    @Binding var operandToCalculate: Bool
    @Binding  var enteringNewNumber: Bool
    let buttonOperand: String
    
    var body: some View {
        Button {
            if !operandToCalculate {
                previousNumber = Int(currentNumber) ?? 0
                operandToCalculate = true
            } else {
                switch buttonOperand {
                case "+":
                    previousNumber += Int(currentNumber) ?? 0
                case "-":
                    previousNumber -= Int(currentNumber) ?? 0
                case "*":
                    previousNumber *= Int(currentNumber) ?? 0
                case "/":
                    previousNumber /= Int(currentNumber) ?? 0
                default:
                    print("Something is definitely wrong")
                }
                currentNumber = String(previousNumber)
                operandToCalculate = false
            }
            enteringNewNumber = true
        } label: {
            Text(buttonOperand)
                .bold()
                .padding()
                .border(.blue)
        }
    }
}
