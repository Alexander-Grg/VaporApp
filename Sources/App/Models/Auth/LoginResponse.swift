//
//  LoginResponse.swift
//  
//
//  Created by Alexander Grigoryev on 7/9/22.
//

import Vapor

struct LoginResponse: Content {
    let result: Int
    let user: User
    let user_message: String
}

struct User: Content {
    let id_user: Int
    let user_login: String
    let user_name: String
    let user_lastname: String
}
