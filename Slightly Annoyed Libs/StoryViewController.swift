//
//  StoryViewController.swift
//  Slightly Annoyed Libs
//
//  Created by block7 on 10/16/15.
//  Copyright © 2015 Jack Doherty. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
    var textBoxes = [TextBoxCell]()
    var currentStory :Story?
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = currentStory?.story
    }

}
