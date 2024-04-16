

import Foundation


struct StoryBrain {
    let example = [
    Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
    Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play Dead"),
    Story(title: "You find a treasure chest", choice1: "Open it ", choice2: "Check for traps")
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(_ userChoice: String) -> Int {
        let actualStory = example[storyNumber]
        let actualChoice1 = actualStory.choice1
        let actualChoice2 = actualStory.choice2
        
        if userChoice == actualChoice1 {
            return 1
        } else {
            return 2
        }
    }
    
    func getNextStory() -> String {
        return example[storyNumber].title
    }
    
    func buttonText1() -> String {
        return example[storyNumber].choice1
    }
    
    func buttonText2() -> String {
        return example[storyNumber].choice2
    }
    
    
}
