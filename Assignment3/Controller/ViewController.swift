//
//  ViewController.swift
//  Assignment3
//
//  Created by Coditas on 20/09/21.
//

import UIKit
//protocol DataPass {
//    func dataPassing(productName : String, vendorAddress : String)
//}

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, add2CartButton{
   
    @IBOutlet weak var collectionView: UICollectionView!
    var product = [Product]()
    var productViewModel = ProductViewModel()

    //var delegate : DataPass?
    
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
        //print(product.count)
        return product.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.productNameLbl.text = product[indexPath.row].productname
        cell.priceLbl.text = product[indexPath.row].price
        cell.vendorNameLbl.text = product[indexPath.row].vendorname
        cell.vendorAddressLbl.text = product[indexPath.row].vendoraddress
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 2
        cell.layer.borderColor = UIColor.black.cgColor
        
        cell.callDelegate = self
        cell.index = indexPath
        
        
//        cell.addToCartPressed.tag = indexPath.row
//        cell.addToCartPressed.addTarget(self, action: #selector(viewDetail), for: .touchUpInside)
        return cell
    }
//    @objc func viewDetail (sender : UIButton){
//        let indexPath1 = IndexPath(row: sender.tag, section: 0)
//        let cart = self.storyboard?.instantiateViewController(identifier: "cartVC") as! CartTableViewController
//        cart.cartProduct = product
//        cart.totalPrice = indexPath1.row
//        print("index",indexPath1.row)
//        self.navigationController?.pushViewController(cart, animated: true)
//    }
    
    func onClickCell(index: Int) {
        print(index,"index is")
        let vc = CartTableViewController()
//        vc.indexId = index
        vc.cartProduct = product
        // delegate?.dataPassing(productName: product[index].productname, vendorAddress: product[index].vendoraddress)
    }
}



