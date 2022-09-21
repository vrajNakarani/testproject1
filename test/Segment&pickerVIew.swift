//
//  Segment&pickerVIew.swift
//  test
//
//  Created by NGM TECH on 14/09/22.
//

import UIKit

class Segment_pickerVIew: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
var EnglishAnimal = ["Dog","Cat","Cow","Lion","Bat"]
var GujratiAnimal = ["Shih","Vagh","Kangaru","Jiraf","zibra"]
var arry:[String] = [""]
 
   // MARK: -  Outlet
    
    @IBOutlet weak var AnimalPickerView: UIPickerView!
    @IBOutlet weak var btnSelect: UIButton!
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    
    // MARK: -  Action Handler
    
    @IBAction func chengSegmentControl(_ sender: UISegmentedControl) {
        arry = []
        switch sender.selectedSegmentIndex
        {
        case 0:
            for en in EnglishAnimal{
              arry.append(en)
        }
            AnimalPickerView.reloadAllComponents()
            break
        case 1:
            for gu in GujratiAnimal{
                arry.append(gu)
            }
            AnimalPickerView.reloadAllComponents()
            break
        default:
            break
        }
    }
   
    // MARK: -  View life cycle 
    
    override func viewDidLoad() {
        super.viewDidLoad()
         AnimalPickerView.dataSource = self
         AnimalPickerView.delegate = self
    }
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
    }
     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
      return arry.count
    }
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arry[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         btnSelect.setTitle(arry[row], for:.normal )
    }
}

		


 

