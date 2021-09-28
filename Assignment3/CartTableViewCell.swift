//
//  CartTableViewCell.swift
//  Assignment3
//
//  Created by Coditas on 22/09/21.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cProductImage: UIImageView!
    @IBOutlet weak var cProductNameLbl: UILabel!
    @IBOutlet weak var cVendorNameLbl: UILabel!
    @IBOutlet weak var cVendorAddressLbl: UILabel!
    @IBAction func callVendorButton(_ sender: Any) {
    }
    @IBAction func removeFromCartButton(_ sender: Any) {
        
    }
    @IBOutlet weak var priceLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
}
