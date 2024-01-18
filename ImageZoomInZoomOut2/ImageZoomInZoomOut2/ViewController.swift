//
//  ViewController.swift
//  ImageZoomInZoomOut2
//
//  Created by NTS on 15/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    var imageData = [
                    UIImage(imageLiteralResourceName: "sunset1"),
                    UIImage(imageLiteralResourceName: "sunset2"),
                    UIImage(imageLiteralResourceName: "sunset3"),
                    UIImage(imageLiteralResourceName: "sunset4"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5"),
                    UIImage(imageLiteralResourceName: "sunset5")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imageOutlet.layer.backgroundColor = UIColor.black.cgColor
        cell.imageOutlet.layer.borderWidth = 1
        cell.imageOutlet.layer.masksToBounds = false
        cell.imageOutlet.layer.cornerRadius = cell.imageOutlet.frame.height/2
        cell.imageOutlet.clipsToBounds = true
        cell.imageOutlet.image = imageData[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageInfo = GSImageInfo(image: imageData[indexPath.row], imageMode: .aspectFit)
        let trsansitionInfo = GSTransitionInfo(fromView: collectionView)
        let imageViewer = GSImageViewerController(imageInfo: imageInfo, transitionInfo: trsansitionInfo)
        imageViewer.dismissCompletion = {
            print("Dismiss Method Called")
        }
        present(imageViewer, animated: true)
    }
    
    
}

