//
//  Service.swift
//  DependencyInjectionByProtocolExample
//
//  Created by Tom Elliott on 9/3/16.
//  Copyright © 2016 Tom Elliott. All rights reserved.
//

import UIKit

protocol Service {
    func name() ->  String
}

class AppService: Service {

    func name() -> String {
        return "Application Service"
    }
    
}
