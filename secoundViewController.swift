//
//  secoundViewController.swift
//  test
//
//  Created by NGM TECH on 05/09/22.
//

import UIKit

class secoundViewController: UIViewController {
   // MARK: - Outlet
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var txtprofileName: UITextField!
    @IBOutlet weak var lblerorrMassage: UILabel!
    
  // MARK: - View life cycle
    
override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
// MARK: - Action Handler
    @IBAction func btnSighUp(_ sender: Any) {
        if txtEmail.text  == ""{
            lblerorrMassage.text = "Enter the email address"
            return
        }
        if txtPassword.text == ""{
            lblerorrMassage.text = "Enter the Password"
            return
        }
        if txtprofileName.text == ""{
            lblerorrMassage.text = "Enter the profileName"
            return
        }
        lblerorrMassage.text = ""
        
    }
    
}
