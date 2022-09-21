//
//  PickerView2VC.swift
//  test
//
//  Created by NGM TECH on 12/09/22.
//

import UIKit

class PickerView2VC: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    // MARK: -  Outlet
    
    @IBOutlet weak var picKerview: UIPickerView!
    @IBOutlet weak var btnselectButton: UIButton!
 
    let animal =
     ["Lion","Dog","Monkey","Cat","Bet","Tiger","elephent","Cow","Horse"]
   
    // MARK: -  View life cycle
    
    override func viewDidLoad() {
        picKerview.isHidden = true
        
        picKerview.delegate = self
        picKerview.dataSource = self
        super.viewDidLoad()

     }
    
    // MARK: -  Action Handler
    
    @IBAction func btnselctAnimal(_ sender: UIButton) {
        if picKerview.isHidden{
            picKerview.isHidden = false
            picKerview.isHidden = false
        }
    }
     public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
     public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return animal.count
     }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return animal[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        btnselectButton.setTitle(animal[row], for:.normal )
         
        picKerview.isHidden = false
    }

}
