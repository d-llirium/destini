//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    // MARK: - PROPERTIES
    let stories = [
        Story(
            text: "You see a fork in the road.",
            choices: ["Take a left.", "Take a right."]
        ),
        Story(
            text: "You see a tiger.",
            choices: ["Shout for help.", "Play dead."]
        ),
        Story(
            text: "You seefound a treasure chest.",
            choices: ["Open it.", "Check for traps."]
        ),
    ]
    var storyNumber = 0
    
    // MARK: - FUNCTIONS
    mutating func nextStory( userChoice: String ){
        if userChoice == "Take a left." {
            storyNumber = 1
        } else if userChoice == "Take a right." {
            storyNumber = 2
        } else {
            storyNumber = 0
        }
    }
    func getStoryText() -> String {
        return stories[storyNumber].text
    }
    func getChoice1() -> String {
        return stories[storyNumber].choices[0]
    }
    func getChoice2() -> String {
        return stories[storyNumber].choices[1]
    }
}
