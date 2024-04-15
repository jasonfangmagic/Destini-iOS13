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
    
    let example = [
    Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
    Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play Dead"),
    Story(title: "You find a treasure chest", choice1: "Open it ", choice2: "Check for traps")
    ]
    
    var storyNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle
        let actualStory = example[storyNumber]
        let actualChoice1 = actualStory.choice1
        let actualChoice2 = actualStory.choice2
        
        if userChoice == actualChoice1 {
            storyNumber = 1
        } else {
            storyNumber = 2
        }
        
        updateUI()
        
    }
    
    
    func updateUI() {
        storyLabel.text = example[storyNumber].title
        choice1Button.setTitle(example[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(example[storyNumber].choice2, for: .normal)
    }


}

