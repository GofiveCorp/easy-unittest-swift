//
//  MyCalculatorApp.swift
//  MyCalculator
//
//  Created by Decha Kenthaworn on 24/12/2566 BE.
//

import SwiftUI

@main
struct MyCalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView(viewModel: CalculatorViewModel())
        }
    }
}
