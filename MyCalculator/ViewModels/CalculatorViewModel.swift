//
//  CalculatorViewModel.swift
//  MyCalculator
//
//  Created by Decha Kenthaworn on 24/12/2566 BE.
//

import Foundation
import Combine

class CalculatorViewModel: ObservableObject {
    private var model = CalculatorModel()

    @Published var result: Int = 0

    func performAddition(number1: Int, number2: Int) {
        result = model.add(number1, number2)
    }

    func performSubtraction(number1: Int, number2: Int) {
        result = model.subtract(number1, number2)
    }
}

