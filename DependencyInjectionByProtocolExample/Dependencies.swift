//
//  Dependencies.swift
//  DependencyInjectionByProtocolExample
//
//  Created by Tom Elliott on 9/3/16.
//  Copyright © 2016 Tom Elliott. All rights reserved.
//

// Marks a class as having a dependency on a Service instance
protocol ServiceDependency {
    static func defaultService() -> Service
}

// Function to create a new Service instance
typealias ServiceCreator = () -> Service