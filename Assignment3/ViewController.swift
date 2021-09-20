//
//  ViewController.swift
//  Assignment3
//
//  Created by Coditas on 20/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    var productArray = [Product]()

    var productViewModel = ProductViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        productViewModel.fetchData { (data) in
            self.productArray = data
        }
    }
}

