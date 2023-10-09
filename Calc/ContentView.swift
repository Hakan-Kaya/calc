//
//  ContentView.swift
//  Calc
//
//  Created by Hakan Kaya on 9.10.2023.
//

import SwiftUI

struct ContentView: View {
    var currentNumber = 0
    @State var currentResult = "0"
    @State var operandToCalculate = false
    
    var body: some View {
        HStack {
            Text("Result: ")
            Text("\(currentResult)")
        }
        Button {
            if !operandToCalculate {
                if currentResult == "0" {
                    currentResult = ""
                }
                currentResult += "1"
            }
        } label: {
            Text("1")
        }
        Button {
            operandToCalculate.toggle()
        } label: {
            Text("+")
        }
    }
}

#Preview {
    ContentView()
}
