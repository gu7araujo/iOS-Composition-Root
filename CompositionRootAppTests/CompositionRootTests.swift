//
//  CompositionRootTests.swift
//  CompositionRootAppTests
//
//  Created by Gustavo Araujo Santos on 27/05/24.
//

import XCTest
@testable import CompositionRootApp

final class CompositionRootTests: XCTestCase {

    func test_instance() {
        // Given that the instances are registered
        let analyticsTrackerInstance = CompositionRoot.analyticsTracker
        let networkingInstance = CompositionRoot.networking
        let mainModuleViewModelInstance = CompositionRoot.mainModuleViewModel(onGoToDetailTap: { })
        
        // Then the variables aren't nil
        XCTAssertNotNil(analyticsTrackerInstance)
        XCTAssertNotNil(networkingInstance)
        XCTAssertNotNil(mainModuleViewModelInstance)
    }
    
    func test_single_instance_registration() {
        // Given there are two variables of a singleton
        guard let networkingInstanceOne = CompositionRoot.networking as? NetworkService else {
            XCTFail()
            return
        }
        
        guard let networkingInstanceTwo = CompositionRoot.networking as? NetworkService else {
            XCTFail()
            return
        }
        
        // Then they point to the same memory address
        XCTAssertTrue(networkingInstanceOne === networkingInstanceTwo)
    }
}
