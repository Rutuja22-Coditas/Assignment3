//
//  ProductViewModel.swift
//  Assignment3
//
//  Created by Coditas on 20/09/21.
//

import Foundation

class ProductViewModel{
    var product = [Product]()
    
    func fetchData(completion : @escaping ([Product])->()){
        let urlString = "https://mobiletest-hackathon.herokuapp.com/getdata/"
        if let url = URL(string: urlString){
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    do{
                        let sharedurlSession = try JSONDecoder().decode(User.self, from: data!)
                        self.product = sharedurlSession.products
                        print("Product",self.product)
                        completion(sharedurlSession.products)
                    }
                    catch{
                        print("error:",error)
                    }
                }
            }.resume()
        }
    }
    
}
