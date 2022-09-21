//
//  currentDatePickerVC.swift
//  test
//
//  Created by NGM TECH on 19/09/22.
//

import UIKit

class currentDatePickerVC: UIViewController {
    
    // MARK: - Outelt
   
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var lblDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.locale = .current
        datePicker.date = Date()
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)
    
    }
 
    // MARK: -  segmented thurru Datepicker style change
    
    @IBAction func btnSegTapped(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            datePicker.preferredDatePickerStyle = .compact
        case 1:
            datePicker.preferredDatePickerStyle = .inline
        case 2:
            datePicker.preferredDatePickerStyle = .wheels

        default:
            break
            
        }
    }
 
    @objc func dateSelected(){
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
        
        lblDate.text =  resultString
        self.view.endEditing(true)
    }
    
}
