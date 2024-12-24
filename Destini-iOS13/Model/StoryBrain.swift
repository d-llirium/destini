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
        //0
        Story(
          title: "You entered the restaurant and asked the hostes where your date is, and she points to a table where your high school crush is on, you...",
          choice1: "Go to the bathroom to freshen up!", choice1Destination: 2,
          choice2: "Walk strait to the table.", choice2Destination: 1
      ),
        //1
      Story(
          title: "When he sees you he opens a smile and gestures fo you to seat. You never thought you'd end up on blind date with him after 5 years. You guys place your orders. You",
          choice1: "start a conversation.", choice1Destination: 3,
          choice2: "wait for him to say something.", choice2Destination: 4
      ),
        //2
      Story(
        title: "You are so nervous... that you don't see the waiter comming your way and before you know it, there is pizza sauce all over your outfit", choice1: "You call the date off and go home", choice1Destination: 5,
          choice2: "You just go home.", choice2Destination: 6
      ),
        //3
      Story(
          title: "'So... Ted, what have you been doing all these years?' to what he answers 'Have we met before?'... Later, he remembers you, he just couldn't before because you changed a lot",
          choice1: "'You are joking right?'", choice1Destination: 6,
          choice2: "You are flattered", choice2Destination: 5
      ),
        //4
        Story(
            title: "'It's Ariel right!?, so... tell me a little abour yourself, where did you grow up?' you enter in panick mode... is he making fun of me? So you say...",
            choice1: "'You are joking right?'", choice1Destination: 6,
            choice2: "You answer him and pretend you've never met him before", choice2Destination: 6
        ),
        //5
      Story(
          title: "You guys schedule for next Friday. Good luck!",
          choice1: "The", choice1Destination: 0,
          choice2: "End", choice2Destination: 0
      ),
        //6
        Story(
            title: "You decide to never see him again!",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    var storyNumber = 0
    
    // MARK: - FUNCTIONS
    mutating func nextStory( userChoice: String ) {
        if userChoice == stories[storyNumber].choice1 {
            storyNumber = stories[storyNumber].choice1Destination
        } else if userChoice == stories[storyNumber].choice2 {
            storyNumber = stories[storyNumber].choice2Destination
        } else {
            storyNumber = 0
        }
    }
    func getStoryText() -> String {
        return stories[storyNumber].title
    }
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
}
