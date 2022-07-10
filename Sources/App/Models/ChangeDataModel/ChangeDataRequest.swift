//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/10/22.
//

import Vapor

struct ChangeDataRequest: Content {
    let id_user: Int
    let username: String
    let password: String
    let email: String
    let gender: String
    let credit_card: String
    let bio: String
}
