//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/10/22.
//

import Vapor

struct GetSingleProductResponse: Content {
    let result: Int
    let product_name: String
    let product_price: Int
    let product_description: String
}
