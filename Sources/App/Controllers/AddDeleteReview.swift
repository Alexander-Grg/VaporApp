//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/21/22.
//

import Vapor
import SwiftUI

class AddDeleteReview {
    func addReview(_ req: Request) throws -> EventLoopFuture<AddReviewResponse> {
        guard let body = try? req.content.decode(AddReviewRequest.self) else {
            throw Abort(.badRequest)
        }

            let review = ProductReviews(review: body.review, nameOfReviewer: body.nameOfReviewer)
            var response = AddReviewResponse(result: nil, error: nil)
        
            productList.updateEach { product in
                if product.id_product == body.id {
                    product.productReviews?.append(review)
                    
                    response = AddReviewResponse(result: 1, error: nil)
                    
                } else {
                   
                   response = AddReviewResponse(result: nil, error: "Data hasn't been updated")
                }
            }
        return req.eventLoop.future(response)
    }
}

extension MutableCollection {
  mutating func updateEach(_ update: (inout Element) -> Void) {
    for i in indices {
      update(&self[i])
    }
  }
}
