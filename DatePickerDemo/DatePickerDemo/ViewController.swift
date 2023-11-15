//
//  ViewController.swift
//  DatePickerDemo
//
//  Created by NTS on 23/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textDate: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textDate.delegate = self
    }


}

extension ViewController: UITextFieldDelegate{
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
        datePicker.addTarget(self, action: #selector(self.datePickerHandeler(datePicker:)), for: .valueChanged)
        textDate.inputView = datePicker //keyboard
        
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 44))
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelButtonClicked))
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.doneButtonClicked))
        
        let flexiButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolbar.setItems([cancelButton, flexiButton, doneButton], animated: false)
        textDate.inputAccessoryView = toolbar
    }
    
    @objc
    func cancelButtonClicked()
    {
        textDate.resignFirstResponder()
    }
    
    @objc
    func doneButtonClicked()
    {
        if let datePicker = textDate.inputView as? UIDatePicker {
            let dateFormat = DateFormatter()
            dateFormat.dateStyle = .long
            textDate.text = dateFormat.string(from: datePicker.date)
            print(datePicker.date)
        }
        
        textDate.isEnabled = false
        textDate.resignFirstResponder()
    }
    
    @objc
    func datePickerHandeler(datePicker: UIDatePicker)
    {
        print(datePicker.date)
    }
}
