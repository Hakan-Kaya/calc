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
        Button {
            if currentNumber == "0" {
                currentNumber = ""
            }
            currentNumber += "1"
        } label: {
            Text("1")
        }
        Button {
            if !operandToCalculate {
                previousNumber = Int(currentNumber) ?? 0
                currentNumber = "0"
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

#Preview {
    ContentView()
}
