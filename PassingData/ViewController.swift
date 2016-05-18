//
//  ViewController.swift
//  PassingData
//
//  Created by Jose Roberto Abreu on 5/18/16.
//  Copyright © 2016 Media Revolution. All rights reserved.
//

import UIKit

struct Product{
    var name:String
    var imageName:String
}

class ViewController: UIViewController {

    @IBOutlet weak var cvProducts: UICollectionView!
    var products:[Product] = [Product(name: "Prod. 1", imageName: "dummy1"),Product(name: "Prod. 2", imageName: "dummy2"),Product(name: "Prod. 3", imageName: "dummy3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segue_cv_main"{
            let mainViewController = segue.destinationViewController as! MainViewController
            if let indexProductSelected = cvProducts.indexPathsForSelectedItems()?.first{
                mainViewController.product = self.products[indexProductSelected.row]
            }
        }
    }

}

extension ViewController : UICollectionViewDataSource{
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellCustom", forIndexPath: indexPath) as! CustomCollectionViewCell
        
        let product = products[indexPath.row]
        
        cell.lblProductName.text = product.name
        cell.imgProduct.image = UIImage(named: product.imageName)
        
        return cell
    }
    
}

