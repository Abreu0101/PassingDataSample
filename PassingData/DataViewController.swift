//
//  DataViewController.swift
//  PassingData
//
//  Created by Jose Roberto Abreu on 5/18/16.
//  Copyright © 2016 Media Revolution. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var lblSample: UILabel!
    var data:String?
    
    override func viewDidLoad() {
        self.lblSample.text = data
    }

}
