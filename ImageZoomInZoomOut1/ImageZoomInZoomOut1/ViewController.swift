//
//  ViewController.swift
//  ImageZoomInZoomOut1
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
                    UIImage(imageLiteralResourceName: "sunset1"),
                     UIImage(imageLiteralResourceName: "sunset2"),
                     UIImage(imageLiteralResourceName: "sunset3"),
                     UIImage(imageLiteralResourceName: "sunset4"),
                     UIImage(imageLiteralResourceName: "sunset5")
                    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.image.layer.borderWidth = 1
        cell.image.layer.masksToBounds = false
        cell.image.layer.borderColor = UIColor.black.cgColor
        cell.image.layer.cornerRadius = cell.image.frame.height/2
        cell.image.clipsToBounds = true
        
        cell.image.image = imageData[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageInfo = GSImageInfo(image: imageData[indexPath.row], imageMode: .aspectFit)
        let transitionInfo = GSTransitionInfo(fromView: collectionView)
        let imageViewer = GSImageViewerController(imageInfo: imageInfo, transitionInfo: transitionInfo)
        imageViewer.dismissCompletion = {
            print("dismiss called")
        }
        present(imageViewer, animated: true)
    }
    
    
}
