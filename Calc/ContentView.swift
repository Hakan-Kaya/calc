//
//  ContentView.swift
//  Calc
//
//  Created by Hakan Kaya on 9.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State var previousNumber = 0
    @State var currentNumber = "0"
    @State var operandToCalculate = false
    
    var body: some View {
        HStack {
            Text("Result: ")
            Text("\(currentNumber)")
        }
        
        NumberButton(currentNumber: $currentNumber)
        
        OperandButton(previousNumber: $previousNumber, currentNumber: $currentNumber, operandToCalculate: $operandToCalculate)
    }
}

#Preview {
    ContentView()
}
