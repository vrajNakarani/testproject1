//
//  SegmentControlPrectice.swift
//  test
//
//  Created by NGM TECH on 14/09/16.
//

import UIKit

class SegmentControlPrectice: UIViewController {

   // MARK: -  Outlet

    @IBOutlet weak var Segmentcontoloutlet: UISegmentedControl!
    @IBOutlet weak var lbltextLabel: UILabel!
    
    // MARK: - Action Handler
    
    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        switch Segmentcontoloutlet.selectedSegmentIndex
        {
        case 0:
            lbltextLabel.text = "vraj"
        case 1:
            lbltextLabel.text = "patel"
        case 2:
            lbltextLabel.text = "Shubham"
        default:
            break
        }
    }
    // MARK: - View life cycle 
    override func viewDidLoad() {
        super.viewDidLoad()

        lbltextLabel.text = "vraj"
    }
    
 

}
