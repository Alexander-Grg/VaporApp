//
//  GetProductListResponse.swift
//  
//
//  Created by Alexander Grigoryev on 7/10/22.
//

import Vapor

struct GetProductListResponse: Content {
    let products: [Product]?
    let error: String?
}

struct Product: Content {
    let result: Int
    let id_product: Int
    let product_name: String
    let price: Int
    let id_category: Int
    let productReviews: [ProductReviews]?
}

struct ProductReviews: Content {
    let review: String
    let nameOfReviewer: String
}


//struct GetSingleProductResponse: Content {
//    let result: Int
//    let product_name: String
//    let product_price: Int
//    let product_description: String
//}
