//
//  AuthController.swift
//  
//
//  Created by Alexander Grigoryev on 7/7/22.
//

import Vapor

class AuthController {
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RegisterResponse(result: 1,
                                        user_message: "User been succesfully registered")
    
        return req.eventLoop.future(response)
    }
}
