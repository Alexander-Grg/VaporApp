//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/29/22.
//

import Vapor

final class PayBasketController {
    func pay(_ req: Request) throws -> EventLoopFuture<PayBasketResponse> {
        guard let body = try? req.content.decode(PayBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        var response = PayBasketResponse(result: 1, userMessage: "")
        
        if body.totalPrice > 0 {
            response = PayBasketResponse(result: 1, userMessage: "The payment in amount of \(body.totalPrice) is succeed")
        } else {
            response = PayBasketResponse(result: 0, userMessage: "The payment is failed, try again")
        }
        
        return req.eventLoop.future(response)
    }
}
