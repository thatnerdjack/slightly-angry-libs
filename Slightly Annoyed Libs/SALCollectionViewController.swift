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
private var textBoxes = [UITextField]()

class SALCollectionViewController: UICollectionViewController {
    
}

extension SALCollectionViewController {
    
    //1
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //2
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    //3
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(REUSE_IDENT, forIndexPath: indexPath)
        cell.backgroundColor = UIColor.blackColor()
        // Configure the cell
        return cell
    }
}

extension SALCollectionViewController : UICollectionViewDelegateFlowLayout {
    //1
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    //3
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
}