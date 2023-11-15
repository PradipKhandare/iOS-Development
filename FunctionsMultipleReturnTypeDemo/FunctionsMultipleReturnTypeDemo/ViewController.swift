//
//  ViewController.swift
//  FunctionsMultipleReturnTypeDemo
//
//  Created by NTS on 27/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let familyData = getFamily(brotherName: "Raj", sisterName: "lkuiu", fatherName: "js")
        print(familyData)
        print(familyData.0)
    }
    
    
    //Multiple Return Type:
    func getFamily(brotherName: String, sisterName: String, fatherName: String ) -> (String, String, String){
       return(" brother = \(brotherName)", "sister = \(sisterName)", "father = \(fatherName)")
    }
    

}

