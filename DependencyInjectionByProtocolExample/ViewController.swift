//
//  ViewController.swift
//  DependencyInjectionByProtocolExample
//
//  Created by Tom Elliott on 9/3/16.
//  Copyright © 2016 Tom Elliott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ServiceDependency {

    // Store our service instance here, rather than call the "factory" every time
    var service: Service
    
    // Somewhere to display the name returned by our service instance
    @IBOutlet var serviceName: UILabel?
    
    // Initializers for the app, using property injection
    required init?(coder aDecoder: NSCoder) {
        service = ViewController.defaultService()
        super.init(coder: aDecoder)
    }
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        service = ViewController.defaultService()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    // Initializer for testing, using initializer injection
    init(serviceCreator: ServiceCreator = ViewController.defaultService) {
        self.service = serviceCreator()
        super.init(nibName: nil, bundle: nil)
    }
    
    // Populate our label
    override func viewDidLoad() {
        super.viewDidLoad()
        serviceName?.text = service.name()
    }

}

