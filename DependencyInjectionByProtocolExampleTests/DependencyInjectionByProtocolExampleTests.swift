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

    // Verify that initializer injection can be used without triggering the default
    func testInitInjection() {
        let vc = ViewController(serviceCreator: { ServiceCreator in return TestService() } )
        vc.serviceName = UILabel()
        vc.viewDidLoad()
        
        XCTAssertEqual(vc.serviceName?.text, "Test", "Incorrect service name")
    }
    
}