//
//  RegisterResponse.swift
//  
//
//  Created by Alexander Grigoryev on 7/7/22.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
