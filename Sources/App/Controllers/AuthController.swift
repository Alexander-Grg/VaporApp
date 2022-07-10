//
//  LoginController.swift
//  
//
//  Created by Alexander Grigoryev on 7/9/22.
//

import Vapor

class AuthController {
    let responseLogin = LoginResponse(result: 1,
                                 user: User(id_user: 777777,
                                            user_login: "UserLogin",
                                            user_name: "UserName",
                                            user_lastname: "UserLastName"),
                                 user_message: "Login succesful")
    let responseLogout = LogoutResponse(result: 1)
    
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        return req.eventLoop.future(responseLogin)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        return req.eventLoop.future(responseLogout)
    }
}
