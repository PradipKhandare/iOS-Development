//
//  ViewController.swift
//  AddingSwitchUsingSwifty
//
//  Created by NTS on 25/10/23.
//

import UIKit

class ViewController: UIViewController, SwiftySwitchDelegate {
    
    
    func valueChanged(sender: SwiftySwitch) {
        if switch1.isOn {
            self.view.backgroundColor = UIColor.blue
        }else {
            self.view.backgroundColor = UIColor.green
        }
        
        if switch2.isOn {
            self.view.backgroundColor = UIColor.red
            
        }else {
            self.view.backgroundColor = UIColor.white
        }
    }
    

    @IBOutlet weak var switch2: SwiftySwitch!
    @IBOutlet weak var switch1: SwiftySwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch1.delegate = self
    }


}

