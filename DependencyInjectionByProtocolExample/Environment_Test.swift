//
//  Environment_Test.swift
//  DependencyInjectionByProtocolExample
//
//  Created by Tom Elliott on 9/3/16.
//  Copyright © 2016 Tom Elliott. All rights reserved.
//

import UIKit

// Crash if a test tries to use the default ServiceDependency factory function
extension ServiceDependency {
    static func defaultService() -> Service { fatalError() }
}