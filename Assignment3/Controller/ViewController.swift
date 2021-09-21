//
//  ViewController.swift
//  Assignment3
//
//  Created by Coditas on 20/09/21.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var collectionView: UICollectionView!
    var product = [Product]()

    var productViewModel = ProductViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        productViewModel.fetchData{
            data in
            self.product = data
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(product.count)
        return product.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.productNameLbl.text = product[indexPath.row].productname
        cell.priceLbl.text = product[indexPath.row].price
        cell.vendorNameLbl.text = product[indexPath.row].vendorname
        cell.vendorAddressLbl.text = product[indexPath.row].vendoraddress
        //cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.black.cgColor
        
        return cell
    }
    
}

