//
//  ViewController.swift
//  GenericsDemo
//
//  Created by NTS on 27/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let res = addition(v1: 10, v2: 10)
        print("addition using function  is \(res)")
        
        let resGen = additionUsingGenerics(v1: 12, v2: 5.5)
        print("addition using generics is \(resGen)")
        
        let resDouble = addFloat(m1: 10.98, m2: 12.21)
        print(resDouble)
    }

    func addition(v1: Int, v2: Int) -> Int{
        return v1 + v2
    }
    
    
    //MARK: - Generics
    func additionUsingGenerics<T: Numeric> (v1: T, v2: T) -> T{
        return v1 + v2
    }
    
    func addFloat(m1: Double, m2: Double) -> Double
    {
        return m1 + m2
    }
}

