//
//  Environment_App.swift
//  DependencyInjectionByProtocolExample
//
//  Created by Tom Elliott on 9/3/16.
//  Copyright © 2016 Tom Elliott. All rights reserved.
//

import UIKit

class AppEnvironment: NSObject {
    
    static var _service: AppService = AppService()
    static var service: Service {
        get {
            return _service
        }
    }
    
}

extension ServiceDependency {
    static func _service() -> Service { return AppEnvironment.service }
}