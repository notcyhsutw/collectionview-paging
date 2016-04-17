//
//  CollectionViewPagingFlowLayout.swift
//  paging
//
//  Created by Cheng-Yu Hsu on 4/17/16.
//  Copyright © 2016 cyhsu. All rights reserved.
//

import UIKit

class CollectionViewPagingFlowLayout: UICollectionViewFlowLayout {
    
    let screenSize = UIScreen.mainScreen().bounds.size
    let spacing: CGFloat = 16.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.scrollDirection = .Horizontal
        self.itemSize = CGSizeMake(screenSize.width - spacing * 2, screenSize.height * 0.5)
        self.minimumLineSpacing = spacing * 0.5;
        self.sectionInset = UIEdgeInsetsMake(0, spacing, 0, spacing);
    }
    
    override func targetContentOffsetForProposedContentOffset(proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        let page = round((proposedContentOffset.x - sectionInset.left) / (itemSize.width + minimumLineSpacing))
        return CGPointMake(
            page == 0 ? 0 : sectionInset.left + page * (itemSize.width + minimumLineSpacing) - minimumLineSpacing * 2,
            proposedContentOffset.y
        )
    }
}
