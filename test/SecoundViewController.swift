//
//  SecoundViewController.swift
//  test
//
//  Created by NGM TECH on 12/09/22.
//

import UIKit

class SecoundViewController: UIViewController {

    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

         
    }
     
  // MARK: - Action Handler
   
    @IBAction func gotoPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goTothird", sender: self)
    }
    
   
}
