//
//  Dependent.swift
//  DependencyInjectionByProtocolExample
//
//  Created by Tom Elliott on 9/3/16.
//  Copyright © 2016 Tom Elliott. All rights reserved.
//

import UIKit

class Dependent: NSObject, ServiceDependency {

    var service: Service
    
    override init(){
        service = Dependent._service()
    }
    
    init(service: Service){
        self.service = service
        super.init()
    }
    
}
