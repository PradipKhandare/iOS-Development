//
//  ViewController.swift
//  CollectionViewDemo1
//
//  Created by NTS on 06/11/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
//    @IBOutlet weak var collectionViewOutlet: UICollectionView!
//    @IBOutlet weak var imageOutlet: UIImageView!
//    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    var arrayLabel = ["sunset1", "sunset2", "sunset3", "sunset4", "sunset5", "iphone-8", "iphone-12", "iphone-13", "iphone-13-pro", "iphone-14"]
    var arrayImage = [UIImage(imageLiteralResourceName: "sunset1"),
                      UIImage(imageLiteralResourceName: "sunset2"),
                      UIImage(imageLiteralResourceName: "sunset3"),
                      UIImage(imageLiteralResourceName: "sunset4"),
                      UIImage(imageLiteralResourceName: "sunset5"),
                      UIImage(imageLiteralResourceName: "iphone-8"),
                      UIImage(imageLiteralResourceName: "iphone-12"),
                      UIImage(imageLiteralResourceName: "iphone-13"),
                      UIImage(imageLiteralResourceName: "iphone-13-pro"),
                      UIImage(imageLiteralResourceName: "iphone-14")
                     ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MyCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        
    }
    
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

