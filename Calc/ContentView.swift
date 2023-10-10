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
    @State var enteringNewNumber = true
    @State var calculate = ""
    
    var body: some View {
        HStack {
            Text("\(currentNumber)")
                .font(.title)
                .frame(width: 300, height: 50, alignment: .trailing)
                .border(Color.black)
        }
        .bold()
        .padding(.all)
        
        VStack {
            HStack(spacing: 20) {
                NumberButton(currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonValue: "1")
                NumberButton(currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonValue: "2")
                NumberButton(currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonValue: "3")
                NumberButton(currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonValue: "4")
                
            }
            .padding()
        
            HStack(spacing: 20) {
                NumberButton(currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonValue: "5")
                NumberButton(currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonValue: "6")
                NumberButton(currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonValue: "7")
                NumberButton(currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonValue: "8")
            }
            .padding()
            
            HStack(spacing: 20) {
                NumberButton(currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonValue: "9")
                NumberButton(currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonValue: "0")
                NumberButton(currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonValue: ".")
            }
            .padding()
            
            HStack(spacing: 20) {
                OperandButton(previousNumber: $previousNumber, currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonOperand: "+", calculate: $calculate)
                OperandButton(previousNumber: $previousNumber, currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonOperand: "-", calculate: $calculate)
                OperandButton(previousNumber: $previousNumber, currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonOperand: "*", calculate: $calculate)
                OperandButton(previousNumber: $previousNumber, currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonOperand: "/", calculate: $calculate)
                OperandButton(previousNumber: $previousNumber, currentNumber: $currentNumber, enteringNewNumber: $enteringNewNumber, buttonOperand: "=", calculate: $calculate)
            }
        }
        .padding()
        Spacer()
    }
}

#Preview {
    ContentView()
}
