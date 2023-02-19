//
//  LoginRequest.swift
//  
//
//  Created by Константин on 19.02.2023.
//

import Vapor

struct LoginRequest: Content {
    let username: String
    let password: String
}
