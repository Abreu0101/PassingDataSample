//
//  MainViewController.swift
//  PassingData
//
//  Created by Jose Roberto Abreu on 5/18/16.
//  Copyright © 2016 Media Revolution. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var firstContainer: UIView!
    @IBOutlet weak var secondContainer: UIView!
    var product:Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }
    
    func setupControllers(){
    
        if let product = product{
            
            let imageViewController = Util.getViewController("ImageViewController") as! ImageViewController
            imageViewController.imageName = product.imageName
            imageViewController.willMoveToParentViewController(self)
            imageViewController.view.frame = firstContainer.bounds
            self.firstContainer.addSubview(imageViewController.view)
            imageViewController.didMoveToParentViewController(self)
            self.addChildViewController(imageViewController)
            
            let dataViewController = Util.getViewController("DataViewController") as! DataViewController
            dataViewController.data = product.name
            dataViewController.willMoveToParentViewController(self)
            dataViewController.view.frame = firstContainer.bounds
            self.secondContainer.addSubview(dataViewController.view)
            dataViewController.didMoveToParentViewController(self)
            self.addChildViewController(dataViewController)
            
        }else{
            self.navigationController?.popViewControllerAnimated(true)
        }
        
    }

}

class Util{
    
    class func getViewController(name:String)->UIViewController{
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier(name)
    }
    
}
