//
//  Extension+UIViewController.swift
//  ExtensionInSwift
//
//  Created by NTS on 27/11/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    func popupAlert(title: String,
                    message: String,
                    actionTitles:[String], 
                    actionStyle: UIAlertAction.Style,
                    action: [(UIAlertAction) -> Void]) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for (index, title) in actionTitles.enumerated() {
            let action = UIAlertAction(title: title, style: actionStyle, handler: action[index])
            alert.addAction(action)
        }
        self.present(alert, animated: true, completion: nil)
        
}
    func hideKeyboardWhenTappedArround(){
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc
    func dismissKeyboard(){
        view.endEditing(true)
    }
        

}
