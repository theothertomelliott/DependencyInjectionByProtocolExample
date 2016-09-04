//
//  DependencyInjectionByProtocolExampleTests.swift
//  DependencyInjectionByProtocolExampleTests
//
//  Created by Tom Elliott on 9/3/16.
//  Copyright © 2016 Tom Elliott. All rights reserved.
//

import XCTest
@testable import DependencyInjectionByProtocolExample

class DependencyInjectionByProtocolExampleTests: XCTestCase {

    // Verify that initializer injection can be used without triggering property injection
    func testInitInjection() {
        let vc = ViewController(service: TestService())
        vc.serviceName = UILabel()
        vc.viewDidLoad()
        
        XCTAssertEqual(vc.serviceName?.text, "Test", "Incorrect service name")
    }
    
}

// Test-specific Service
class TestService: Service {
    
    func name() -> String {
        return "Test"
    }
    
}
