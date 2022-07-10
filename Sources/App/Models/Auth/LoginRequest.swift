//
//  LoginRequest.swift
//  
//
//  Created by Alexander Grigoryev on 7/9/22.
//

import Vapor

struct LoginRequest: Content {
    let username: String
    let password: String
}
