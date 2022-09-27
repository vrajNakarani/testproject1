//
//  uiTebleViewPrectice.swift
//  test
//
//  Created by NGM TECH on 22/09/22.
//

import UIKit

class uiTebleViewPrectice: UIViewController, UITableViewDelegate {

    var animalName = ["Lion","Bat","Elephent","Dog","Cat","Monkey","Donkey","Human","Women","Tiger","Gold fish ","Shark","Vehal","cocrose","Deer","Fox","Panda","Owl","Zebra","Turtle"]
   
    // MARK: - Outlet
    
    @IBOutlet weak var animalTabelView: UITableView!
  
    // MARK: - View Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        animalTabelView.delegate = self
        animalTabelView.dataSource = self
    }
    
 
}
 
extension uiTebleViewPrectice:UITabBarDelegate,UITableViewDataSource{
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected = \(animalName[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = animalTabelView.dequeueReusableCell(withIdentifier: "animal Cell", for: indexPath)
        cell.textLabel?.text = animalName[indexPath.row]
        return cell
    }
}

