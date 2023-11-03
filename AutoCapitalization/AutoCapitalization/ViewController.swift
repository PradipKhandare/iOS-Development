//
//  ViewController.swift
//  AutoCapitalization
//
//  Created by NTS on 23/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var textField3: UITextField!
    
    @IBOutlet weak var textField4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField1.autocapitalizationType = .allCharacters
        textField2.autocapitalizationType = .none
        textField3.autocapitalizationType = .sentences
        textField4.autocapitalizationType = .words
        
    }


}

