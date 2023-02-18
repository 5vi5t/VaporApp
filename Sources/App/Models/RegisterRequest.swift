//
//  RegisterRequest.swift
//  
//
//  Created by Константин on 17.02.2023.
//

import Vapor

struct RegisterRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
