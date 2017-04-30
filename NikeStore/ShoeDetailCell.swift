//
//  ShoeDetailCell.swift
//  NikeStore
//
//  Created by Popsical on 30/4/17.
//  Copyright © 2017 htekayadi. All rights reserved.
//

import Foundation

class ShoeDetailCell: UITableViewCell {
    
    @IBOutlet weak var shoeNameLabel: UILabel!
    @IBOutlet weak var shoeDescriptionLabel: UILabel!
    
    var shoe: Shoe! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI()
    {
        shoeNameLabel.text = shoe.name
        shoeDescriptionLabel.text = shoe.description
    }
}
