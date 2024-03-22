//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storiesObj = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.titleLabel?.text
        storiesObj.nextStory(userChoice: userAnswer!)
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc
    func updateUI() {
        storyLabel.text = storiesObj.getStory()
        choice1Button.setTitle(storiesObj.updatechoice1Button(), for: .normal)
        choice2Button.setTitle(storiesObj.updateChoice2Button(), for: .normal)
    }
}

