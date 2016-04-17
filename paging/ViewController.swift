//
//  ViewController.swift
//  paging
//
//  Created by Cheng-Yu Hsu on 4/17/16.
//  Copyright © 2016 cyhsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make the collection view looks like paged scrollView
        collectionView?.decelerationRate = UIScrollViewDecelerationRateFast
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
    }
    
    
}
