//
//  ViewController.swift
//  DatePickerDemo2
//
//  Created by NTS on 23/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dateTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        dateTextField.delegate = self
    }


}


extension ViewController: UITextFieldDelegate
{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.openDatePicker()
    }
}

extension ViewController
{
    func openDatePicker()
    {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(self.datePickerHandler(datePicker:)),
                             for: .valueChanged)
        dateTextField.inputView = datePicker //Keyboard
        
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width,
                                              height: 44))
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self,
                                           action: #selector(self.cancelButtonPressed))
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self,
                                           action: #selector(self.doneButtonPressed))
        let flexiButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil,
                                          action: nil)
        
        toolbar.setItems([cancelButton, flexiButton, doneButton], animated: false)
        dateTextField.inputAccessoryView = toolbar
        
    }
    
    @objc
    func cancelButtonPressed()
    {
        dateTextField.resignFirstResponder()
    }
    
    @objc
    func doneButtonPressed()
    {
        if let datePicker = dateTextField.inputView as? UIDatePicker {
            let dateFormat = DateFormatter()
            dateFormat.dateStyle = .full
            dateTextField.text = dateFormat.string(from: datePicker.date)
            print(datePicker.date)
        }
        dateTextField.isEnabled = false
        dateTextField.resignFirstResponder()
    }
    
    @objc
    func datePickerHandler(datePicker: UIDatePicker)
    {
        print(datePicker.date)
    }
}

