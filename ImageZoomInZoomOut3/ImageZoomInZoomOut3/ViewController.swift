//
//  ViewController.swift
//  ImageZoomInZoomOut3
//
//  Created by NTS on 15/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    var arrayOfImage = [
        
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
        return arrayOfImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imageOutlet.image = arrayOfImage[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageInfo = GSImageInfo(image: arrayOfImage[indexPath.row], imageMode: .aspectFit)
        let transitionInfo = GSTransitionInfo(fromView: collectionView)
        let imageViewer = GSImageViewerController(imageInfo: imageInfo, transitionInfo: transitionInfo)
        imageViewer.dismiss(animated: true) {
            print("dismissed method called")
        }
        present(imageViewer, animated: true)
    }
    
    
    
    
}
