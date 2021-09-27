//
//  CollectionViewCell.swift
//  Assignment3
//
//  Created by Coditas on 21/09/21.
//

import UIKit

protocol add2CartButtonIndex {
    func onClickButton(index: Int)
}

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productNameLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var vendorNameLbl: UILabel!
    @IBOutlet weak var vendorAddressLbl: UILabel!
//    @IBOutlet weak var addToCartPressed: UIButton!
    var cellIndexDelegate: add2CartButtonIndex?
    var index : IndexPath?
    
    @IBAction func addToCartPressed(_ sender: UIButton) {
        cellIndexDelegate?.onClickButton(index: index!.row)
        
    }
    
    var buttonColor = true
//    @IBAction func addToCartButtonPressed(_ sender: UIButton) {
//        buttonColor = !buttonColor
//        if buttonColor{
//            sender.backgroundColor = .lightGray
//        }
//        else{
//            sender.backgroundColor = .green
//
//        }
//    }
    
    
}
