//
//  CollectionViewCell.swift
//  Assignment3
//
//  Created by Coditas on 21/09/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productNameLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var vendorNameLbl: UILabel!
    @IBOutlet weak var vendorAddressLbl: UILabel!
    
    var buttonColor = true
    @IBAction func addToCartButtonPressed(_ sender: UIButton) {
        buttonColor = !buttonColor
        if buttonColor{
            sender.backgroundColor = .lightGray
        }
        else{
            sender.backgroundColor = .green
            sender
        }
    }
    
    
}
