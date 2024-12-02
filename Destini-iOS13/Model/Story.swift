//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    // MARK: - PROPERTIES
    let text: String
    let choices: [String]
    
    // MARK: - FUNCTIONS
    init(text: String, choices: [String]) {
        self.text = text
        self.choices = choices
    }
}
