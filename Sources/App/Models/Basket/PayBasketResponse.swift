//
//  File 2.swift
//  
//
//  Created by Alexander Grigoryev on 7/29/22.
//

import Vapor

struct PayBasketResponse: Content {
    let result: Int
    let userMessage: String
}
