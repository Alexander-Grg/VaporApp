//
//  Logout.swift
//  
//
//  Created by Alexander Grigoryev on 7/10/22.
//

import Vapor

struct LogoutRequest: Content {
    let id_user: Int
}
