//
//  ViewController.swift
//  HotelApp
//
//  Created by Ben Smith on 03/04/2018.
//  Copyright © 2018 Ben Smith. All rights reserved.
//

import UIKit
import Rswift
import SVProgressHUD
class ViewController: UIViewController {

    var offers: [Offer] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func specialOffersButton(_ sender: Any) {
        SVProgressHUD.show()
        APIManager.shared_APIManager.getOffers(completionSuccess: { (offers) in
            SVProgressHUD.dismiss()

            self.offers = offers
            self.performSegue(withIdentifier: R.segue.viewController.showOffers.identifier , sender: self)
        }) { (error) in
            print(error)
            SVProgressHUD.dismiss()

        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == R.segue.viewController.showOffers.identifier {
            let dest = segue.destination as! OfferTableViewController
            dest.offers = self.offers
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

