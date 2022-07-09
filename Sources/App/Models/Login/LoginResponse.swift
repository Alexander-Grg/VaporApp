//
//  LoginResponse.swift
//  
//
//  Created by Alexander Grigoryev on 7/9/22.
//

import Vapor

struct LoginResponse: Content {
    var result: Int
    var user: User
    var user_message: String
}

struct User: Content {
    var id_user: Int
    var user_login: String
    var user_name: String
    var user_lastname: String
}
