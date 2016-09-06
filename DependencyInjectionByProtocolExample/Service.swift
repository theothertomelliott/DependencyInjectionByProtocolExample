//
//  Service.swift
//  DependencyInjectionByProtocolExample
//
//  Created by Tom Elliott on 9/3/16.
//  Copyright © 2016 Tom Elliott. All rights reserved.
//

import UIKit

// Simple service protocol
protocol Service {
    func name() ->  String
}

// Service identified as for use in the application itself
class AppService: Service {

    func name() -> String {
        return "Application Service"
    }
    
}

// Test-specific Service
class TestService: Service {
    
    func name() -> String {
        return "Test"
    }
    
}