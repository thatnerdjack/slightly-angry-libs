//
//  SALCollectionViewController.swift
//  Slightly Annoyed Libs
//
//  Created by block7 on 9/30/15.
//  Copyright © 2015 Jack Doherty. All rights reserved.
//

import UIKit

private let reuseIdentifier = "textInputField"
private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)

class SALCollectionViewController: UICollectionViewController {
    
}

extension SALCollectionViewController {
    
    //1
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return searches.count
    }
    
    //2
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searches[section].searchResults.count
    }
    
    //3
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) 
        cell.backgroundColor = UIColor.blackColor()
        // Configure the cell
        return cell
    }
}