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
    @State var enteringNewNumber = true
    
    var body: some View {
        HStack {
            Text("Result: ")
            Text("\(currentNumber)")
        }
        .bold()
        .padding()
        
        HStack {
            NumberButton(currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonValue: "1")
            NumberButton(currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonValue: "2")
            NumberButton(currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonValue: "3")
            NumberButton(currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonValue: "4")
            NumberButton(currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonValue: "5")
        }
        
        HStack {
            NumberButton(currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonValue: "6")
            NumberButton(currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonValue: "7")
            NumberButton(currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonValue: "8")
            NumberButton(currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonValue: "9")
            NumberButton(currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonValue: "0")
        }
        
        HStack {
            OperandButton(previousNumber: $previousNumber, currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonOperand: "+")
            OperandButton(previousNumber: $previousNumber, currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonOperand: "-")
            OperandButton(previousNumber: $previousNumber, currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonOperand: "*")
            OperandButton(previousNumber: $previousNumber, currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonOperand: "/")
            OperandButton(previousNumber: $previousNumber, currentNumber: $currentNumber, operandToCalculate: $operandToCalculate, enteringNewNumber: $enteringNewNumber, buttonOperand: "=")
        }
    }
}

#Preview {
    ContentView()
}
