//
//  ViewController.swift
//  Basic CoreData
//
//  Created by NTS on 11/03/24.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    private let manager: EmployeeManager = EmployeeManager()
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       tapgesture()
        profileImage.isUserInteractionEnabled = true
    }
    
    func tapgesture(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        profileImage.isUserInteractionEnabled = true
        profileImage.addGestureRecognizer(tap)
    }
    
    @objc func imageTapped(){
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        profileImage.image = info[.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }

    @IBAction func createButtonPressed(_ sender: UIButton) {
      
        let employee = Employee(name: nameTextField.text, email: emailTextField.text, profilePic: imageView.image?.pngData(), id: UUID())
        manager.createEmployee(employee: employee)
        
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
}

