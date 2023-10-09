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
    
    var body: some View {
        Button {
            if !operandToCalculate {
                previousNumber = Int(currentNumber) ?? 0
                operandToCalculate.toggle()
            } else {
                previousNumber += Int(currentNumber) ?? 0
                currentNumber = String(previousNumber)
                operandToCalculate.toggle()
            }
        } label: {
            Text("+")
        }
    }
}

//#Preview {
//    OperandButton(previousNumber: 0, currentNumber: "0", operandToCalculate: false)
//}
