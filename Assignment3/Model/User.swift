//
//  User.swift
//  Assignment3
//
//  Created by Coditas on 20/09/21.
//

import Foundation

struct User : Codable{
    var products:[Product]
    
}
struct Product : Codable {
    var productname : String
    var price : String
    var vendorname : String
    var vendoraddress : String
    var productImg : String
    //var productGallery : String
    var phoneNumber : String
}
