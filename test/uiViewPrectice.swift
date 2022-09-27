//
//  uiViewPrectice.swift
//  test
//
//  Created by NGM TECH on 22/09/22.
//

import UIKit

class uiViewPrectice: UIViewController {
    

    
    @IBOutlet weak var myView1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesMoved")
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesEnded")
    }
    
}

// Akh karata vadhare view Hoy Tyre
//if let touch = touch.view{
//print("xyz")
//}
