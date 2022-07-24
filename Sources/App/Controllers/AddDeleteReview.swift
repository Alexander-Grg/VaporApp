//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/21/22.
//

import Vapor

var productsReviews: [ProductReviews] = []

class AddDeleteReview {
    func addReview(_ req: Request) throws -> EventLoopFuture<ReviewResponse> {
        guard let body = try? req.content.decode(ReviewRequest.self) else {
            throw Abort(.badRequest)
        }
            let review = ProductReviews(review: body.review, nameOfReviewer: body.nameOfReviewer)
            var response = ReviewResponse(result: nil, error: nil)
        
        productList.forEach { key, value in
            if key.contains(body.id ) {
                productList[body.id]?.productReviews.append(review)
                response = ReviewResponse(result: 1, error: nil)
            }
        }
        return req.eventLoop.future(response)
    }
    
    func deleteReview(_ req: Request) throws -> EventLoopFuture<DeleteReviewResponse> {
        guard let body = try? req.content.decode(DeleteReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        var response = DeleteReviewResponse(result: nil, error: nil)
        
        productList.forEach { key, value in
            if key == body.id {
                productList[body.id]?.productReviews.removeLast()
                response = DeleteReviewResponse(result: 1, error: nil)
        }
        }
        return req.eventLoop.future(response)
    }
}
