//
//  DetailsTableViewCell.swift
//  Basic CoreData
//
//  Created by NTS on 12/03/24.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageViewInCell: UIImageView!
    
    @IBOutlet weak var employeeNameLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
