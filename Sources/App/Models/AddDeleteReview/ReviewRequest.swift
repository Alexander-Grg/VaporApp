//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/21/22.
//

import Vapor

struct ReviewRequest: Content {
    let review: String
    let nameOfReviewer: String
    let id: String
}
