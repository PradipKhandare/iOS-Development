//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain
{
    let stories = [
                    Story(title: "You see fork in the road", choice1: "Take a left", choice2: "Take a right"),
                    Story(title: "You see Tiger", choice1: "Shout for help", choice2: "Play dead"),
                    Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")
                ]
    
    var position = 0
    
    func getStory() -> String{
            return stories[position].title
    }
    
    func updatechoice1Button() -> String {
        return stories[position].choice1
    }
    
    func updateChoice2Button() -> String {
        return stories[position].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[position]
        if position + 1 < stories.count {
            if userChoice == currentStory.choice1 {
                position += 1
            }else if userChoice == currentStory.choice2{
                position += 1
            }
        }else {
            position = 0
        }
    }
}

