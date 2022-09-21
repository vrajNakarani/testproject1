//
//  PickerViewPrectice.swift
//  test
//
//  Created by NGM TECH on 13/09/22.
//

import UIKit

class PickerViewPrectice: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
 
    var className = ["A","B","C","D"]

    // MARK: -  Outlet
    
    @IBOutlet weak var txtPickerView: UITextField!
    @IBOutlet weak var selectPickerView: UIPickerView!
    @IBOutlet weak var btnSelect: UIButton!
     
    // MARK: -  View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectPickerView.dataSource = self
        selectPickerView.delegate = self

        
    }
    // MARK: -  Action Handler
    
    @IBAction func btnSelectTextfilad(_ sender: Any) {
       
        if txtPickerView.text == "" {
            txtPickerView.text = ""
        }else{
            btnSelect.setTitle((txtPickerView.text ?? ""),for:.normal)
            btnSelect.currentTitle
            className.append(btnSelect.currentTitle ?? "")
            selectPickerView.reloadAllComponents()
        }
        
    }
    
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
   }
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return className.count
    }
   func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       return className[row]
   }
   func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
    btnSelect.setTitle(className[row], for:.normal )
  
   }


}


