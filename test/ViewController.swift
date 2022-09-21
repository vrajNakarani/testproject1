//
//  ViewController.swift
//  test
//
//  Created by NGM TECH on 01/09/22.
//

import UIKit

class ViewController: UIViewController {
   
    // MARK: - Outlet
    
    @IBOutlet weak var txtEmali: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtPhonNumber: UITextField!
    @IBOutlet weak var Emalierror: UILabel!
    @IBOutlet weak var Passworderror: UILabel!
    @IBOutlet weak var PhonNumbererror: UILabel!
    @IBOutlet weak var lblprint: UILabel!
    @IBOutlet weak var Submitbutton: UIButton!
    
    // MARK: - view life cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        resetFrom()
        lblcount.text = "\(stepperCount.value)"
    }
    // MARK: - Action Handler
    func resetFrom()
    {
        Submitbutton.isEnabled = false
        Emalierror.isHidden = false
        Passworderror.isHidden = false
        PhonNumbererror.isHidden = false
        
        Emalierror.text = "required"
        Passworderror.text = "required"
        PhonNumbererror.text = "required"
        
        txtEmali.text = ""
        txtPassword.text = ""
        txtPhonNumber.text = ""

    }
    @IBAction func emalichanged(_ sender: Any)
{
        if let email = txtEmali.text
        {
            if let errorMessage = invalidemail(email)
            {
                Emalierror.text = errorMessage
                Emalierror.isHidden = false
            }
        else
            {
                Emalierror.isHidden = true
            }
        }
        chaikForValidForm()
    }
    func invalidemail(_ value: String) -> String?
    {
        let reqularExpression = "[A-Z0-9a-z.%+-]+@[A-za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        if !predicate.evaluate(with: value)
        {
            return "Invalid Emali Address"
        }
        return nil
    }
    @IBAction func PassWordchanged(_ sender: Any)
    {
        if let PassWord = txtPassword.text
        {
            if let errorMassage = invalidpassword(PassWord)
                {
                   Passworderror.text = errorMassage
                   Passworderror.isHidden = false
                }
            else
                {
                    Passworderror.isHidden = true
                }
        }
        
        chaikForValidForm()
    }
    func invalidpassword(_ value: String) -> String?
    {
        if value.count < 8
        {
            return "PassWord must be at least 8 characters"
        }
        
//        if containdigit(value)
//        {
//            return "passWord must contain at least 1 digit"
//        }
//        if containsLowerCase(value)
//        {
//            return "passWord must contain at least 1 lowewcase character"
//        }
//        if containsupperCase(value)
//        {
//            return "passWord must contain at least 1 upperCase character"
//        }
        
        return nil
    }
    func containdigit(_ value: String) -> Bool
    {
        let reqularExpression = ".*[0-9]+.8"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        return !predicate.evaluate(with: value)
    }
    
    func containsLowerCase(_ value: String) -> Bool
    {
        let reqularExpression = ".*[a-z]+.8"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        return !predicate.evaluate(with: value)
    }
    func containsupperCase(_ value: String) -> Bool
    {
        let reqularExpression = ".*[A-Z]+.8"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        return !predicate.evaluate(with: value)
    }
   
    @IBAction func PhonNumberchanged(_ sender: Any)
    {
        if let phoneNumber = txtPhonNumber.text
        {
            if let errorMessage = invalidphonNumber(phoneNumber)
            {
                PhonNumbererror.text = errorMessage
                PhonNumbererror.isHidden = false
            }
        else
            {
                PhonNumbererror.isHidden = true
            }
        }
    }
    func invalidphonNumber(_ value: String) -> String?{
        let set = CharacterSet(charactersIn:value)
        if value.count < 10
        {
            return "PassWord must be at least 8 characters"
        }
        
        if !CharacterSet.decimalDigits.isSuperset(of: set)
            {
              return "phon NUmber must constain only digit"
            }
         
            return ""
            return nil
    }
    func chaikForValidForm()
    {
        if Emalierror.isHidden && Passworderror.isHidden && PhonNumbererror.isHidden
        {
            Submitbutton.isEnabled = true
        }
        else
        {
            Submitbutton.isEnabled = false
        }
    }
        
    
    @IBAction func SubmitAction(_ sender: UIButton)
    {
        lblprint.text = txtEmali.text
    }


    @IBOutlet weak var lblcount: UILabel!
    @IBOutlet weak var stepperCount: UIStepper!
    @IBAction func Stepper(_ sender: UIStepper) {
        lblcount.text = String(sender.value)
    }
    
}

 
