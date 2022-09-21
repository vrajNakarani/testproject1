//
//  PickerViewVC.swift
//  test
//
//  Created by NGM TECH on 09/09/22.
//

import UIKit

class PickerViewVC: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    let avatars = ["Abhishek","Mehul","Sonal","Akta","Druvya","Amisha","Mayank","Keyur"]
    
    @IBOutlet weak var choosAvatarPickerView: UIPickerView!
    @IBOutlet weak var avatarimg: UIImageView!
    @IBOutlet weak var lblavatarName: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

     }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return avatars.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return avatars[row]
    }
}

 
