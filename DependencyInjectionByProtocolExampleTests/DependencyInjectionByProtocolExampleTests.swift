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

    func testExample() {
        let vc = ViewController(service: TestService())
        vc.serviceName = UILabel()
        vc.viewDidLoad()
        
        XCTAssertEqual(vc.serviceName?.text, "Test", "Incorrect service name")
    }
    
}

class TestService: Service {
    
    func name() -> String {
        return "Test"
    }
    
}
