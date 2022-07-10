//
//  GetProductListResponse.swift
//  
//
//  Created by Alexander Grigoryev on 7/10/22.
//

import Vapor

struct GetProductListResponse: Content {
    let page_number: Int
    let products: [Product]?
    let error: String?
}

struct Product: Content {
    let id_product: Int
    let product_name: String
    let price: Int
}

