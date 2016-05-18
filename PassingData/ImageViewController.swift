//
//  ImageViewController.swift
//  PassingData
//
//  Created by Jose Roberto Abreu on 5/18/16.
//  Copyright © 2016 Media Revolution. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imgSample: UIImageView!
    var imageName:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let image = UIImage(named: imageName!){
            self.imgSample.image = image
        }
        
    }


}
