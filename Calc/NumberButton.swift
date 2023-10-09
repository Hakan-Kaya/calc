//
//  NumberButton.swift
//  Calc
//
//  Created by Hakan Kaya on 9.10.2023.
//

import SwiftUI

struct NumberButton: View {
    @Binding var currentNumber: String
    
    var body: some View {
        Button {
            if currentNumber == "0" {
                currentNumber = ""
            }
            currentNumber += "1"
        } label: {
            Text("1")
        }
    }
}

//#Preview {
//    NumberButton(currentNumber: "1")
//}
