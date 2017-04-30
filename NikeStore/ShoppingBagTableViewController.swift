//
//  ShoppingBagTableViewController.swift
//  NikeStore
//
//  Created by Popsical on 30/4/17.
//  Copyright © 2017 htekayadi. All rights reserved.
//

import UIKit

class ShoppingBagTableViewController: UITableViewController
{
    struct Storyboard {
        static let numberOfItemsCell = "numberOfItemsCell"      // cell 0
        static let itemCell = "itemCell"                        // cell 1
        static let cartDetailCell = "cartDetailCell"            // cell 2
        static let cartTotalCell = "cartTotalCell"              // cell 3
        static let checkoutButtonCell = "checkoutButtonCell"    // cell 4
    }
    
    var shoes: [Shoe]? = Shoe.fetchShoes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }
}

extension ShoppingBagTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let shoes = shoes {
            return shoes.count + 4
        } else {
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        guard let shoes = shoes else {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.numberOfItemsCell, for: indexPath) as! NumberOfItemsCell
            cell.numberOfItemsLabel.text = "\(0) ITEM"
            
            return cell
        }
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.numberOfItemsCell, for: indexPath) as! NumberOfItemsCell
            cell.numberOfItemsLabel.text = "\(shoes.count) ITEMS"
            return cell
        } else if indexPath.row == shoes.count + 1 {
            // cartDetailCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cartDetailCell, for: indexPath)
            
            return cell
        } else if indexPath.row == shoes.count + 2 {
            // cartTotalCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.cartTotalCell, for: indexPath)
            
            return cell
        } else if indexPath.row == shoes.count + 3 {
            // checkoutButtonCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.checkoutButtonCell, for: indexPath)
            
            return cell
        } else {
            // itemCell
            let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.itemCell, for: indexPath) as! ShoppingCartItemCell
            cell.shoe = shoes[indexPath.row - 1]
            return cell
        }
    }
}
