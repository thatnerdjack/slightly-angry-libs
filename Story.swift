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
    
    init(storyFriendlyName: String, wordTypes: [String], wordInputs: [String], story: String) {
        self.storyFriendlyName = storyFriendlyName
        self.wordTypes = wordTypes
        self.wordInputs = wordInputs
        self.story = story
    }
}

class RoodyStory: Story {
    
    init() {
        //START HERE
    }
}