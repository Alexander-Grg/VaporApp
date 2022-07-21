//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/21/22.
//

import Vapor

struct AddReviewResponse: Content {
    let result: Int?
    let error: String?
}
