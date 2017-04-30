//
//  SuggestionCollectionViewCell.swift
//  NikeStore
//
//  Created by Popsical on 30/4/17.
//  Copyright © 2017 htekayadi. All rights reserved.
//

import Foundation

class SuggestionCollectionViewCell : UICollectionViewCell
{
    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage! {
        didSet {
            self.imageView.image = image
            self.setNeedsLayout()
        }
        
    }
}
