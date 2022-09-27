//
//  datePickerValueAssign.swift
//  test
//
//  Created by NGM TECH on 21/09/22.
//

import UIKit

class datePickerValueAssign: UIViewController,UITextFieldDelegate {
    var done = true
    
    // MARK: -  Outlet
    @IBOutlet weak var txtTomorrowDate: UITextField!
    @IBOutlet weak var txtYesterdayDate: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var btnbutton1: UIButton!
    @IBOutlet weak var lblDifferentDate: UILabel!
    
   // MARK: - View Life Cycle
    override func viewDidLoad() {
    super.viewDidLoad()
        txtTomorrowDate.delegate = self
        txtYesterdayDate.delegate = self
        datePicker.isHidden = true
       // txtTomorrowDate.inputView = datePicker
        datePicker.locale = .current
        datePicker.date = Date()
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.addTarget(self, action: #selector(datePickerviewAction), for: .valueChanged)
       // datePicker.isHidden = false
   }
    
    // MARK: -  Action Handler
    
    @IBAction func btnDoneClike(_ sender: UIButton){
        
      
        switch done {
        
        case true:
        let formetter = DateFormatter()
        formetter.dateStyle = .medium
        formetter.timeStyle = .none
        
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "MM dd, yyyy"

        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "dd/MM/yyyy"

        let selectDate = formetter.string(from:datePicker.date)
        let showDate = inputFormatter.date(from:  selectDate)
        let resultString = outputFormatter.string(from: showDate!)

        print(resultString)
        
        txtTomorrowDate.text =  resultString
        self.view.endEditing(true)
        datePicker.isHidden = true
        btnbutton1.isHidden = true
        
        case false:
         
        let formetter = DateFormatter()
        formetter.dateStyle = .medium
        formetter.timeStyle = .none
        
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "MM dd, yyyy"

        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "dd/MM/yyyy"

        let selectDate = formetter.string(from:datePicker.date)
        let showDate = inputFormatter.date(from:  selectDate)
        let resultString = outputFormatter.string(from: showDate!)

        print(resultString)
        
        txtYesterdayDate.text =  resultString
        self.view.endEditing(true)
        datePicker.isHidden = true
        btnbutton1.isHidden = true
        
        default:
            break
        }
        
//
//        var tomorrowDate  = txtTomorrowDate.text
//        var YesterdayDate = txtYesterdayDate.text
//        var diffrentDate  =  tomorrowDate - YesterdayDate
//
         
        
    }
    
    @IBAction func datePickerviewAction(_ sender: Any) {
        let formetter = DateFormatter()
        formetter.dateStyle = .medium
        formetter.timeStyle = .none
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
            
            if textField == txtTomorrowDate  {
                
                datePicker.isHidden = false
                done = true
            }else{
                done = false
                datePicker.isHidden = false
                btnbutton1.isHidden = false
                
            }
            
            return true
        }
        
    

}

