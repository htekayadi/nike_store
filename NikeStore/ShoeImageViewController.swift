//
//  ShoeImageViewController.swift
//  NikeStore
//
//  Created by Popsical on 30/4/17.
//  Copyright © 2017 htekayadi. All rights reserved.
//

import UIKit

class ShoeImageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
        
    var image: UIImage! {
        didSet {
            self.imageView?.image = image
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
            
        self.imageView.image = image
    }
}
