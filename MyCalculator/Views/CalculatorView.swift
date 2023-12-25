//
//  CalculatorView.swift
//  MyCalculator
//
//  Created by Decha Kenthaworn on 24/12/2566 BE.
//

import SwiftUI

struct CalculatorView: View {
    @ObservedObject var viewModel: CalculatorViewModel
    @State private var number1 = ""
    @State private var number2 = ""

    var body: some View {
        VStack {
            TextField("Enter number 1", text: $number1)
                .keyboardType(.numberPad)
                .padding()

            TextField("Enter number 2", text: $number2)
                .keyboardType(.numberPad)
                .padding()

            HStack {
                Button("Add") {
                    if let num1 = Int(number1), let num2 = Int(number2) {
                        viewModel.performAddition(number1: num1, number2: num2)
                    }
                }

                Button("Subtract") {
                    if let num1 = Int(number1), let num2 = Int(number2) {
                        viewModel.performSubtraction(number1: num1, number2: num2)
                    }
                }
            }
            .padding()

            Text("Result: \(viewModel.result)")
                .padding()
        }
    }
}
#Preview {
    CalculatorView(viewModel: CalculatorViewModel())
}
