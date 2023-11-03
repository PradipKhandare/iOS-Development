//
//  ViewController.swift
//  AlertAndActionSheet
//
//  Created by NTS on 25/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func alertButtonPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Here is my title", message: "Here is my message", preferredStyle: .alert)
        alert.addTextField { textField in
            textField.placeholder = "Enter your name"
            
        }
        let cancelButton = UIAlertAction(title: "Cancel Button", style: .cancel) { action in
            print("Cancel button pressed")
            print(alert.textFields?.first?.text)
            
        }
        let defaultButton = UIAlertAction(title: "Default Button", style: .default) { action in
            print("Default button pressed")
            
        }
        let destructiveButton = UIAlertAction(title: "Destructive Button", style: .destructive) { action in
            print("Destructive button pressed")
        }
        alert.addAction(destructiveButton)
        alert.addAction(defaultButton)
        alert.addAction(cancelButton)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionButtonPressed(_ sender: UIButton) {
        let sheet = UIAlertController(title: "Here is my title", message: "Here is my message", preferredStyle: .actionSheet)
        
        let cancelButton = UIAlertAction(title: "Cancel Button", style: .cancel) { action in
            print("Cancel button pressed")
            
        }
        let defaultButton = UIAlertAction(title: "Default Button", style: .default) { action in
            print("Default button pressed")
            
        }
        let destructiveButton = UIAlertAction(title: "Destructive Button", style: .destructive) { action in
            print("Destructive button pressed")
        }
        sheet.addAction(destructiveButton)
        sheet.addAction(defaultButton)
        sheet.addAction(cancelButton)
        present(sheet, animated: true, completion: nil)
    }
    
}

