//
//  CartTableViewController.swift
//  Assignment3
//
//  Created by Coditas on 22/09/21.
//

import UIKit

class CartTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, DataPass {
    
    @IBOutlet weak var cartTableView: UITableView!
    var cartProduct = [Product]()
    var abcArray = [Product]()
    var totalPrice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartTableView.register(UINib(nibName: "CartTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        let footer = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        footer.backgroundColor = .gray
        cartTableView.tableFooterView = footer
        
        let label = UILabel(frame: footer.bounds)
        label.text = "Total Price: xxx"
        label.textAlignment = .center
        footer.addSubview(label)
        
        //abcArray.append(cartProduct[totalPrice])
        
        //var cartProductName : String = ""
        //var cartVendorAddress : String = ""
        //print("cartProduct",cartProduct!)
        cartTableView.reloadData()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  abcArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cartTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
//        cell.cProductNameLbl.text = cartProduct[totalPrice].productname
//        cell.cVendorAddressLbl.text = cartProduct[totalPrice].vendoraddress
//        cell.cProductNameLbl.text = abcArray[0].productname
//        cell.cVendorAddressLbl.text = abcArray[0].vendoraddress
//        cell.cVendorNameLbl.text = abcArray[0].vendorname
//        cell.priceLbl.text = abcArray[0].price
        
        return cell
    }
    func dataPassing(productName: String, vendorAddress: String) {
        print("productName",productName)
    }
    
   

   
}

