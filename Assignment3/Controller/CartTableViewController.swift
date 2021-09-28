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
    //var productNamee = [String:String]
    //let viewController = ViewController()
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
        
            print("cartpro",self.cartProduct)
            print("index",self.indexId)
        
        
        
        //viewController.delegate = self
        
        cartTableView.reloadData()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cartTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
        print("array",cartProduct)
        //viewController.delegate = self
        cell.cProductNameLbl.text = cartProduct[indexId].productname
        
        //cell.delegate = self
        return cell
    }
//    func add2Cart(object: String) {
//        cartProduct[0].productname = object
//        print("obj",object)
//    }
    func add2Cart(object: Product) {
        cartProduct = [object]
    }
    
    
    
    
}

