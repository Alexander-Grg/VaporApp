//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/29/22.
//

import Vapor

struct PayBasketRequest: Content {
    let totalPrice: Int
}
