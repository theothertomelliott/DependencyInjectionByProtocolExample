//
//  Environment_App.swift
//  DependencyInjectionByProtocolExample
//
//  Created by Tom Elliott on 9/3/16.
//  Copyright © 2016 Tom Elliott. All rights reserved.
//

import UIKit

// Stores singleton instances of our dependencies
class AppEnvironment: NSObject {
    
    static var _service: AppService = AppService()
    static var service: Service {
        get {
            return _service
        }
    }
    
}

// Provides a factory function for obtaining a Service instance in the application
extension ServiceDependency {
    static func defaultService() -> Service { return AppEnvironment.service }
}