//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    // MARK: - properties
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
    var currentStoryNumber = 0

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    // MARK: - IBActions
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == "Take a left." {
            currentStoryNumber = 1
        } else if sender.currentTitle == "Take a right." {
            currentStoryNumber = 2
        } else {
            currentStoryNumber = 0
        }
        updateUI()
    }
    // MARK: - functions
    func updateUI() {
        let currentStory = stories[currentStoryNumber]
        storyLabel.text = currentStory.text
        choice1Button.setTitle(currentStory.choices[0], for: .normal)
        choice2Button.setTitle(currentStory.choices[1], for: .normal)
    }
}

