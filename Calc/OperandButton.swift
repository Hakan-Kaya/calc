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
    @Binding  var enteringNewNumber: Bool
    let buttonOperand: String
    @Binding var calculate: String
    
    var body: some View {
        Button {
            if calculate == "" {
                calculate = buttonOperand
                previousNumber = Int(currentNumber) ?? 0
            } else {
                switch calculate {
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
                calculate = buttonOperand
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
