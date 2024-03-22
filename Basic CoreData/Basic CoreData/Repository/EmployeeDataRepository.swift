//
//  EmployeeDataRepository.swift
//  Basic CoreData
//
//  Created by NTS on 12/03/24.
//

import Foundation
import CoreData

protocol EmployeeRepository {
    func create(employee: Employee)
    func getAll() -> [Employee]?
    func get(byIdentifier id: UUID) -> Employee?
    func update(employee: Employee) -> Bool
    func delete(id: UUID) -> Bool
}

struct EmployeeDataRepository: EmployeeRepository {
    func create(employee: Employee) {
        let cdEmployee = Employee(context: PersistentStorage.shared.context)
        cdEmployee.email = employee.email
        cdEmployee.name = employee.name
        cdEmployee.id = employee.id
        cdEmployee.profilePic = employee.profilePic
        
        PersistentStorage.shared.saveContext()
    }
    
    func getAll() -> [Employee]? {
        let result  = PersistentStorage.shared.fetchManagedObject(managedObject: Employee.self)
        var employees: [Employee] = []
        
        result?.forEach({ cdEmployees in
            let employee = Employee
           employees.append(employee)
        })
        return employees
    }
    
    func get(byIdentifier id: UUID) -> Employee? {
        let result = getCDEmployee(byIdentifier: id)
        guard result != nil else {return nil}
        return result
        
    }
    
    private func getCDEmployee(byIdentifier id: UUID) -> Employee?{
        let fetchRequest = NSFetchRequest<Employee>(entityName: "CDEmployee")
        let predicate = NSPredicate(format: "id==%@", id as CVarArg)
        
        fetchRequest.predicate = predicate
        do {
            let result = try PersistentStorage.shared.context.fetch(fetchRequest).first
            
            guard result != nil else {return nil}
        
            return result
        }catch let error {
            debugPrint(error)
            return nil
        }
    }
    
    func update(employee: Employee) -> Bool {
        let cdEmployee = getCDEmployee(byIdentifier: employee.id!)
        guard cdEmployee != nil else {return false}
        
        cdEmployee?.email = employee.email
        cdEmployee?.name = employee.name
        cdEmployee?.profilePic = employee.profilePic
        
        PersistentStorage.shared.saveContext()
        
        return true
    }
    
    func delete(id: UUID) -> Bool {
        let cdEmployee = getCDEmployee(byIdentifier: id)
        guard cdEmployee != nil else {return false}
        
        PersistentStorage.shared.context.delete(cdEmployee!)
        return true
    }
}
