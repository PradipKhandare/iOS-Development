//
//  DetailsViewController.swift
//  Basic CoreData
//
//  Created by NTS on 12/03/24.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
  private let manager = EmployeeManager()
    var employees: [Employee]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = "Employees List"
        employees = manager.fetchEmployee()
        if ( employees != nil && employees?.count != 0) {
            self.tableView.reloadData()
        }
    }
    
}

extension DetailsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailsTableViewCell", for: indexPath) as! DetailsTableViewCell
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let thirdVC = storyboard?.instantiateViewController(withIdentifier: "ThirdDetailsViewController") as! ThirdDetailsViewController
        thirdVC.selectedEmployee = self.employees![self.tableView.indexPathForSelectedRow!.row]
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    
    
}
