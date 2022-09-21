//
//  FormViewController.swift
//  test
//
//  Created by NGM TECH on 02/09/22.
//

import UIKit

class FormViewController: UIViewController {
    // MARK: - Outlet
    @IBOutlet weak var txtStudentName: UITextField!
    @IBOutlet weak var txtStdandar: UITextField!
    @IBOutlet weak var txtDateofBoth: UITextField!
    @IBOutlet weak var segMedium: UISegmentedControl!
    @IBOutlet weak var lblPrint: UILabel!
    @IBOutlet weak var segGender: UISegmentedControl!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var lblAgeslider: UILabel!
    @IBOutlet var viewcontro: UIView!
    @IBOutlet weak var lblErrormassage: UILabel!
    
    
    // MARK: - view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPrint.isHidden = true
   }
    // MARK: - Action Handler
    
    @IBAction func btnSubmit() {
    
        if txtStudentName.text == " "{
            lblErrormassage.text = "please Enter the Detail"
            return
        }
        if txtStdandar.text == " "{
            lblErrormassage.text = "please Enter the Detail"
            return
        }
        if txtDateofBoth.text == " "{
            lblErrormassage.text = "please Enter the Detail"
            return
        }
        lblErrormassage.text = ""
        
        
        let segemented = segMedium.titleForSegment(at: segMedium.selectedSegmentIndex)
        let segemented2 = segGender.titleForSegment(at: segGender.selectedSegmentIndex)
        let  btnSubmit = " \(txtStudentName.text ?? ""),\n \(txtStdandar.text ?? ""),\n \(txtDateofBoth.text ?? ""),\n \(segemented ?? ""),\n \(segemented2 ?? ""),\n \(lblAgeslider.text ?? "")"
        lblPrint.text = btnSubmit
   }
    @IBAction func changeSliderValue(_ sender: UISlider) {
        let sliderValue = Int(sender.value)
        lblAgeslider.text = "\(sliderValue)"
   }
    @IBAction func changeColorswitch(_ sender: UISwitch) {
         
        if sender.isOn{
           lblPrint.isHidden = false
        }else{
            lblPrint.isHidden = true
        }
    }
}
 
 
