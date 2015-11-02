//
//  SALCollectionViewController.swift
//  Slightly Annoyed Libs
//
//  Created by block7 on 9/30/15.
//  Copyright © 2015 Jack Doherty. All rights reserved.
//

import UIKit

private let REUSE_IDENT = "textInputField"
private let SECTION_INSERTS = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
private var textBoxes = [TextBoxCell]()
var currentStory = RoodyStory()
private var cellSetupRun = false

class SALCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
    }
    
    func setupCells() {
        print("setupcells: \(currentStory.wordTypes.count)")
        for var i = 0; i < currentStory.wordTypes.count; i++ {
            print("1 \(currentStory.wordTypes[i])")
            let CELL = textBoxes[i]
            CELL.textField.text = currentStory.wordTypes[i]
            print("2 \(currentStory.wordTypes[i])")
        }
    }
    
    func sendInputs() {
        currentStory.wordInputs = [String]()
        for(var i = 0; i < currentStory.wordTypes.count; i++) {
            let TEXT_BOXES_CELL = textBoxes[i]
            currentStory.wordInputs.append(TEXT_BOXES_CELL.textField.text!)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        sendInputs()
        if(segue.identifier == "inputToStory") {
            let DVC = segue.destinationViewController as! StoryViewController
            DVC.currentStory = currentStory
            DVC.textBoxes = textBoxes
            currentStory.loadStory()
        }
    }
}

extension SALCollectionViewController {
    
    //1
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //2
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(currentStory.wordTypes.count)
        return currentStory.wordTypes.count
    }
    
    //3
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(REUSE_IDENT, forIndexPath: indexPath)
        cell.backgroundColor = UIColor.blackColor()
        // Configure the cell
        textBoxes.append(cell as! TextBoxCell)
        if((textBoxes.count == currentStory.wordTypes.count) && !cellSetupRun) {
            setupCells()
            cellSetupRun = true
        }
        print("cell made")
        return cell
    }
}

extension SALCollectionViewController : UICollectionViewDelegateFlowLayout {
    //1
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        print("cell size")
        return CGSize(width: 155, height: 50)
    }
    
    //3
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        print("cell padding")
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
}