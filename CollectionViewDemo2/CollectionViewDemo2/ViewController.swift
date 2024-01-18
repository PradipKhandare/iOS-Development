//
//  ViewController.swift
//  CollectionViewDemo2
//
//  Created by NTS on 06/11/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var arrayImg = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    var arrayLabel = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayImg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imageOutlet.image = UIImage(named: arrayImg[indexPath.row])
        cell.labelOutlet.text = arrayLabel[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

