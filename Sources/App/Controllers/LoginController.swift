//
//  LoginController.swift
//  
//
//  Created by Alexander Grigoryev on 7/9/22.
//

import Vapor

class LoginController {
    let response = LoginResponse(result: 1,
                                 user: User(id_user: 777777,
                                            user_login: "UserLogin",
                                            user_name: "UserName",
                                            user_lastname: "UserLastName"),
                                 user_message: "Login succesful")
    
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        return req.eventLoop.future(response)
    }
}


//func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
//    guard let body = try? req.content.decode(RegisterRequest.self) else {
//        throw Abort(.badRequest)
//    }
//
//    print(body)
//
//    let response = RegisterResponse(result: 1,
//                                    user_message: "Регистрация прошла успешно",
//                                    error_message: nil)
//
//    return req.eventLoop.future(response)
//}
