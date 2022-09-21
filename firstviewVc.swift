//
//  firstviewVc.swift
//  test
//
//  Created by NGM TECH on 08/09/22.
//

import UIKit

class firstviewVc: UIViewController {
    // MARK: - Outlet
    @IBOutlet weak var txtpassWord: UITextField!
    @IBOutlet weak var lblPsaaworderorr: UILabel!
  
    // MARK: - view life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

         
    }
    // MARK: - Action Handler
    
    @IBAction func btnmainMenu(_ sender: Any) {
        if txtpassWord.text == "12345"{
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "secoundViewController") as! secoundViewController
            vc.modalPresentationStyle = .fullScreen
            navigationController?.present(vc, animated: true, completion: nil)
            return
            
        }else{
            lblPsaaworderorr.text = "incorrect password"
            //return
        }
           
    }
}
