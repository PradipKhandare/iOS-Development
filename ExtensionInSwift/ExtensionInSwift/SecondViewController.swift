//
//  SecondViewController.swift
//  ExtensionInSwift
//
//  Created by NTS on 27/11/23.
//

import UIKit


struct Person
{
    let first: String
    let last: String
}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedArround()
//let pradip = Person(first: "Pradip", last: "Khandare")
//        print(pradip.first)
        
        var dict = [String:String]()
        dict["first"] = "Vijay"
        dict["last"] = "Gandhare"
        let name1 = Person(dictionary: dict)
        print(name1)
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        self.popupAlert(title: "Yeah", message: "alert extension", actionTitles: ["ok", "Cancel"], actionStyle: .default, action: [
            { ok in
            print("Press ok")
            }, {
                cancel in
                print("press cancel")
            }
        ])
    }
    
}

extension Person{
    init(dictionary: [String: String]) {
        self.first = dictionary["first"] ?? "Pradip"
        self.last = dictionary["last"] ?? "Khandare"
    }
}

