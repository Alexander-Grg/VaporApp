//
//  GetProductListRequest.swift
//  
//
//  Created by Alexander Grigoryev on 7/10/22.
//

import Vapor

struct GetProductListRequest: Content {
    let id_category: Int
}
