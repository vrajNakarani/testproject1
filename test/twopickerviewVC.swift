//
//  twopickerviewVC.swift
//  test
//
//  Created by NGM TECH on 13/09/22.
//

import UIKit

class twopickerviewVC: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate  {

    // MARK: - Outlet
   
     @IBOutlet weak var multicomponentpicker: UIPickerView!
    @IBOutlet weak var pickerSelection: UILabel!
   
    let countriesarray = ["A","B","C","D"]
    let states = ["A","B","C","D"]
    let aa = ["A","B","C","D"]
    let bb = ["A","B","C","D"]
        
    // MARK: - View life cycle
    
        override func viewDidLoad() {
        super.viewDidLoad()
 
        multicomponentpicker.dataSource = self
        multicomponentpicker.delegate = self
        
    }
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 4
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch component {
        case 0:
            return countriesarray.count
        case 1:
            return states.count
        case 2:
            return aa.count
        case 3:
            return bb.count
        default:
            return 0
        }
    }
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return countriesarray[row]
        case 1:
             return states[row]
        case 2:
            return aa[row]
        case 3:
            return bb[row]
        default:
            return  ""
        }
    }
      func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        var contry = countriesarray [pickerView.selectedRow(inComponent: 0)]
        var stateNumber = states  [pickerView.selectedRow(inComponent: 1)]
        var contry2 = aa [pickerView.selectedRow(inComponent: 2)]
        var contry3 = bb [pickerView.selectedRow(inComponent: 3)]
    
        switch component {
        case 0:
            contry = countriesarray[row]
            pickerSelection.text = "\(contry):\(stateNumber):\(contry2):\(contry3)"
        case 1:
            stateNumber = states[row]
            pickerSelection.text = "\(contry):\(stateNumber):\(contry2):\(contry3)"
            
        case 2:
            contry2 = aa[row]
            pickerSelection.text = " \(contry):\(stateNumber):\(contry2):\(contry3)"
        case 3:
            contry3 = bb[row]
            pickerSelection.text = " \(contry):\(stateNumber):\(contry2):\(contry3)"
        
        default:
            print("ABCD")
        }
        
      }
  }
        
        
        
        
        
     
        
     
