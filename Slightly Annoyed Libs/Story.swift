//
//  Story.swift
//  Slightly Annoyed Libs
//
//  Created by block7 on 10/9/15.
//  Copyright © 2015 Jack Doherty. All rights reserved.
//

class Story {
    var storyFriendlyName: String = ""
    var wordTypes = [String]()
    var wordInputs = [String]()
    var story: String = ""
    
    init(storyFriendlyName: String, wordTypes: [String]) {
        self.storyFriendlyName = storyFriendlyName
        self.wordTypes = wordTypes
    }
    
    func loadStory() {
        preconditionFailure("This method must be overridden")
    }
}

class RoodyStory: Story {
    
    init() {
        super.init(storyFriendlyName: "The Tale of Roody", wordTypes: ["name", "dumb nickname", "adjective", "mystical creature", "location in school", "adjective", "number", "number", "number", "cause of death"])
    }
    
    override func loadStory() {
        story = "One day, an unfortunate fellow named \(wordInputs[0]) met a slightly deranged man by the name of ROODAY (also known as Roody or \(wordInputs[1]), but most people us the former). On this day, Roody decided that he would take \(wordInputs[0]) on a \(wordInputs[2]) and magical adventure to find the elusive \(wordInputs[3]) that lived in the \(wordInputs[4]). Upon entering the \(wordInputs[4]), Roody became overcome with fear of the \(wordInputs[5]) \(wordInputs[3]). The \(wordInputs[3]) had a staggering \(wordInputs[6]) eyes, \(wordInputs[7]) rows of teeth, and \(wordInputs[8]) tails. Obviously, the \(wordInputs[3]) was no match for either Roody or \(wordInputs[0]), so they both died from \(wordInputs[9]) as a result of just looking at the \(wordInputs[3])."
    }
}