
// DARE PICKER PRECTICE


import UIKit

class DatePickerAndTextFialdExample: UIViewController {
    let datepicker = UIDatePicker()
    
    // MARK: - Outlet
  
    @IBOutlet weak var dateTExtFilad: UITextField!
 
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
         let a:Date = Date()
         print(a)
        datepicker.preferredDatePickerStyle = . wheels
        dateTExtFilad.addTarget(self, action: #selector(picDateofBirth), for: .touchDown)
        
         
      
                                                        
    }
    

  
   // MARK: -  Action Handler

    @objc func DoneButtonClick(){
        let formetter = DateFormatter()
        formetter.dateStyle = .medium
        formetter.timeStyle = .none
        
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "MM dd, yyyy"

        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "yyyy-MM-dd"

        let selectDate = formetter.string(from:datepicker.date)
        let showDate = inputFormatter.date(from:  selectDate)
        let resultString = outputFormatter.string(from: showDate!)

        print(resultString)
        
        dateTExtFilad.text =  resultString
        self.view.endEditing(true)
      
    }
   // MARK: - Funcsion
    
    @objc func picDateofBirth(){
        let toolbar = UIToolbar()
        let donebtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(DoneButtonClick))
        toolbar.sizeToFit()
        toolbar.items = [donebtn]
        dateTExtFilad.inputAccessoryView = toolbar
        dateTExtFilad.inputView = datepicker
        datepicker.datePickerMode = .date
//        datepicker.minimumDate = getDate(strDate: "11-9-2010")
//        datepicker.maximumDate = getDate(strDate: "23-10-2050")
        }
    //func getDate(strDate:String) -> Date{
//        let minDate:String = strDate
//        let df = DateFormatter()
//        df.dateFormat = "dd-MM-yyyy"
//        let dateformeted = df.date(from: minDate)
        
//        let outputFormatter = DateFormatter()
//        outputFormatter.dateFormat = "YYYY-MM-dd"
//
//        let showDate = outputFormatter.date(from: "07/21/2016")
//        let resultString = outputFormatter.string(from: showDate!)
//
//        print(resultString)
        
       // return showDate
        
//    }

}

 

 
