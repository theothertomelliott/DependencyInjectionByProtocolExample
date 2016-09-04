//
//  ViewController.swift
//  DependencyInjectionByProtocolExample
//
//  Created by Tom Elliott on 9/3/16.
//  Copyright © 2016 Tom Elliott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ServiceDependency {

    @IBOutlet var serviceName: UILabel?

    var service: Service
    
    required init?(coder aDecoder: NSCoder) {
        service = Dependent._service()
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        service = Dependent._service()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    init(service: Service) {
        self.service = service
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        serviceName?.text = service.name()
    }

}

