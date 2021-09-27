//
//  CartTableViewController.swift
//  Assignment3
//
//  Created by Coditas on 22/09/21.
//

import UIKit

class CartTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, addToCart {
    
    @IBOutlet weak var cartTableView: UITableView!
    var cartProduct = [Product]()
    var indexId : Int = 0
    var productNamee = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cartTableView.register(UINib(nibName: "CartTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        let footer = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        footer.backgroundColor = .gray
        cartTableView.tableFooterView = footer
        
        let label = UILabel(frame: footer.bounds)
        label.text = "Total Price: 0"
        label.textAlignment = .center
        footer.addSubview(label)
        //sabc()
        print("cartpro",cartProduct)
        print("index",indexId)
        
        cartTableView.reloadData()
        
    }
    func abc(){
        for i in 0...5{
            if indexId == i{
                productNamee.append(cartProduct[i])
                print(productNamee)
            }
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cartTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
        cell.cProductNameLbl.text = "ABC"
        return cell
    }
    func add2Cart(productName: String, vendorAddress: String) {
        productNamee[0].productname = productName
    
    }
}

