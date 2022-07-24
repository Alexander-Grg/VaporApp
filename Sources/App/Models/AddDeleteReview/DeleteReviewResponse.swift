//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/24/22.
//

import Vapor

struct DeleteReviewResponse: Content {
    let result: Int?
    let error: String?
}
