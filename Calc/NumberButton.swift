//
//  NumberButton.swift
//  Calc
//
//  Created by Hakan Kaya on 9.10.2023.
//

import SwiftUI

struct NumberButton: View {
    @Binding var currentNumber: String
    @Binding var operandToCalculate: Bool
    @Binding var enteringNewNumber: Bool
    let buttonValue: String
    
    var body: some View {
        Button {
            if currentNumber == "0" || enteringNewNumber {
                currentNumber = ""
                enteringNewNumber = false
            }
            currentNumber += "\(buttonValue)"
        } label: {
            Text("\(buttonValue)")
                .bold()
                .padding()
                .border(.blue)
        }
    }
}
