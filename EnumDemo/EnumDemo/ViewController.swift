//
//  ViewController.swift
//  EnumDemo
//
//  Created by NTS on 27/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    //There are two type of Enum
    //1) Without Type
    //2) With type
    
    
    
    
    //Without type
    enum College {
        case collegeName
        case studentName
        case id
    }
    
    
    //With Type
    enum CollegeType: String {
        case collegeName = "SRCOE"
        case studentName = "Pradip"
        case id = "1"
        
    }
    
    
    
    enum CollegeFunction {
        case studentName
        case collegeName
        case id
        
        
        func description() -> String
        {
            switch self{
            case .collegeName:
                return "SRCOE"
            case .studentName:
                return "Pradip Khandare"
            case .id:
                return "1"
            }
        }
    }

    
    
    
    enum StudentData {
        case studentName(String)
        case studentMarks(String, String, String)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // withTypeDemo()
      // withoutTypeDemo()
        // let collegeFunctionData = CollegeFunction.collegeName.description()
      //  print(collegeFunctionData)
        studentDetails()
    }
    
    func studentDetails()
    {
        let name = StudentData.studentName("Pradip")
        let marks = StudentData.studentMarks("12", "18", "19")
        switch marks {
        case .studentName(let myName):
            print("My name is \(myName)")
        case .studentMarks(let m1, let m2, let m3):
            print("My marks are \(m1), \(m2), \(m3)")
        }
    }
    
    
    
    
    func withoutTypeDemo()
    {
        let collegeData = College.collegeName
        let nameHasValue = College.studentName.hashValue
        print(nameHasValue)
        switch collegeData {
        case .collegeName:
            print("SRCOE")
        case .studentName:
            print("Pradip")
        case .id:
            print(1)
        }
        
       
    }
    
    func withTypeDemo()
    {
        let collegeTypeDetail = CollegeType.collegeName
        print(collegeTypeDetail)
        let collegeTypeRaw = CollegeType.collegeName.rawValue
        print(collegeTypeRaw)
        let collegeTypeHas = CollegeType.collegeName.hashValue
        print(collegeTypeHas)
        let collegeData = CollegeType.collegeName
        switch collegeData {
        case .collegeName:
            print(CollegeType.collegeName)
        case .id:
            print(CollegeType.id)
        case .studentName:
            print(CollegeType.studentName)
        }
    }

}

