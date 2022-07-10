//
//  GetProductListRequest.swift
//  
//
//  Created by Alexander Grigoryev on 7/10/22.
//

import Vapor

struct GetProductListRequest: Content {
    let page_number: Int
    let id_category: Int
}
