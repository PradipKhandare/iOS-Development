//
//  ThirdDetailsViewController.swift
//  Basic CoreData
//
//  Created by NTS on 12/03/24.
//

import UIKit

class ThirdDetailsViewController: UIViewController {

    @IBOutlet weak var imageViewProfile: UIImageView!
    
    @IBOutlet weak var nametextField: UITextField!
    
    @IBOutlet weak var emailtextField: UITextField!
    
    private let manager = EmployeeManager()
    var selectedEmployee: Employee? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func vieWillSetup(){
        self.nametextField.text = selectedEmployee?.name
        self.emailtextField.text = selectedEmployee?.email
        self.imageViewProfile.image = UIImage(data: (selectedEmployee?.profilePic)!)
    }
    
    @IBAction func updateButtonTapped(_ sender: UIButton) {
        let employee = Employee(name: self.nametextField.text, email: self.emailtextField.text, profilePic: self.imageViewProfile.image?.pngData(), id: selectedEmployee?.id)
        
        if (manager.updateEmployee(employee: employee))
        {
            displayAlert(message: "Updates successfully")
        }else {
           displayAlert(message: "Error in updating")
        }
        
    }
    
    @IBAction func deleteButtonTapped(_ sender: UIButton) {
        if(manager.deleteEmployee(id: (selectedEmployee?.id)!))
        {
            displayAlert(message: "Deleted successfully")
        }else {
            displayAlert(message: "error in deleting")
        }
    }
    
    private func displayAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { action in
            self.navigationController?.popViewController(animated: true)
        }
        
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    
}
