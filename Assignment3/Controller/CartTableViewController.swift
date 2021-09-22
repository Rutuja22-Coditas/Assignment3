//
//  CartTableViewController.swift
//  Assignment3
//
//  Created by Coditas on 22/09/21.
//

import UIKit

class CartTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var cartTableView: UITableView!
    
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
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cartTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
        cell.cProductNameLbl.text = "product 1"
        
        return cell
    }
    

   
}

