//
//  RegisterResponse.swift
//  
//
//  Created by Alexander Grigoryev on 7/7/22.
//

import Vapor

struct RegisterResponse: Content {
    let result: Int
    let user_message: String
}

