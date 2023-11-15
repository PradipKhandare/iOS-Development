//
//  ViewController.swift
//  IBOutletAndIBActionDemo
//
//  Created by NTS on 23/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
  //  @IBOutlet weak var buttonTortoise: UIButton!
    
//
//    @IBOutlet weak var tortoiseButton: UIButton!
//    
//    @IBOutlet weak var messageButton: UIButton!
//    
//    @IBOutlet weak var cameraButton: UIButton!
//    
//    @IBOutlet weak var rabbitButton: UIButton!
//    
//    @IBOutlet weak var callingButton: UIButton!
//    
    
    @IBOutlet var allButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tortoiseButton.isSelected = false
//        messageButton.isSelected = false
//        cameraButton.isSelected = false
//        rabbitButton.isSelected = false
//        callingButton.isSelected = false
        
        
    
    }
    
    
    @IBAction func arrayOfAllActionButtons(_ sender: UIButton) {
        
    }
    
    
    
    
    
    
    

//    @IBAction func buttonTortoisePressed(_ sender: UIButton) {
//        
//        sender.isSelected.toggle()
//        //sender.isSelected = !sender.isSelected
//        if sender.isSelected {
//            sender.setImage(#imageLiteral(resourceName: "SF_tortoise.png"), for: .normal)
//        } else {
//            sender.setImage(#imageLiteral(resourceName: "SF_tortoise_fill.png"), for: .normal)
//        }
//        
//    }
    
//    @IBAction func tortoiseButtonSelected(_ sender: UIButton) {
//        sender.isSelected.toggle()
//        if sender.isSelected {
//            tortoiseButton.isSelected = true
//            sender.setImage(#imageLiteral(resourceName: "SF_tortoise.png"),for: .normal)
//        }else {
//            
//            sender.setImage(#imageLiteral(resourceName: "SF_tortoise_fill.png"), for: .normal)
//        }
//        
//    }
//    
//    @IBAction func messageButtonSelectede(_ sender: UIButton) {
//        sender.isSelected.toggle()
//        if sender.isSelected {
//            messageButton.isSelected = true
//            sender.setImage(#imageLiteral(resourceName: "SF_bubble_left.png"), for: .normal)
//        }else {
//            
//            sender.setImage(#imageLiteral(resourceName: "SF_bubble_left_and_bubble_right.png"), for: .normal)
//        }
//        
//    }
//    
//    @IBAction func cameraButtonSelected(_ sender: UIButton) {
//        sender.isSelected.toggle()
//        if sender.isSelected{
//            cameraButton.isSelected = true
//            sender.setImage(#imageLiteral(resourceName: "SF_camera.png"), for: .normal)
//        }else {
//            
//            sender.setImage(#imageLiteral(resourceName: "SF_camera_viewfinder.png"), for: .normal)
//        }
//        
//    }
//    
//    
//    @IBAction func rebbitButtonSelected(_ sender: UIButton) {
//        sender.isSelected.toggle()
//        if sender.isSelected{
//            rabbitButton.isSelected = true
//            sender.setImage(#imageLiteral(resourceName: "SF_hare.png"), for: .normal)
//        }else {
//            
//            sender.setImage(#imageLiteral(resourceName: "SF_hare_fill.png"), for: .normal)
//        }
//        
//    }
//    
//    @IBAction func callingButtonSelected(_ sender: UIButton) {
//        sender.isSelected.toggle()
//        
//        if sender.isSelected{
//            callingButton.isSelected = true
//            sender.setImage(#imageLiteral(resourceName: "SF_phone_down_fill.png"), for: .normal)
//        }else {
//            
//            sender.setImage(#imageLiteral(resourceName: "SF_phone_fill.png"), for: .normal)
//        }
//        
//    }
    
}

