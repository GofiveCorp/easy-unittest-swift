//
//  CalculatorViewModelTests.swift
//  MyCalculatorUITests
//
//  Created by Decha Kenthaworn on 24/12/2566 BE.
//

import XCTest
@testable import MyCalculator

class CalculatorViewModelTests: XCTestCase {
    var viewModel: CalculatorViewModel!

    // Arrange
    override func setUpWithError() throws {
        viewModel = CalculatorViewModel()
    }
    
    // Teardown
    override func tearDownWithError() throws {
        viewModel = nil
    }

    // Act and Assert
    func testPerformAddition() throws {
        // Arrange
        let number1 = 5
        let number2 = 8
        
        // Act
        viewModel.performAddition(number1: number1, number2: number2)
        
        // Assert
        XCTAssertEqual(viewModel.result, 8)
    }

    // Act and Assert
    func testPerformSubtraction() throws {
        
                // Arrange
        let number1 = 8
        let number2 = 3
        
        // Act
        viewModel.performSubtraction(number1: number1, number2: number2)
        
        // Assert
        XCTAssertEqual(viewModel.result, 5)
    }
}
