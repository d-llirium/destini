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

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storyLabel.text = stories[0].text
        choice1Button.setTitle(stories[0].choices[0], for: .normal)
        choice2Button.setTitle(stories[0].choices[1], for: .normal)
    }
    
    // MARK: - IBActions
    @IBAction func choiceMade(_ sender: UIButton) {
    }
    
    // MARK: - functions
    
}

