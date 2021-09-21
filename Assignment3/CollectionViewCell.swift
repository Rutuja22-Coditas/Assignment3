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
    @IBAction func addToCartButton(_ sender: Any) {
    }
}
