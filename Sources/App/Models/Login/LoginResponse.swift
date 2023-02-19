//
//  LoginResponse.swift
//  
//
//  Created by Константин on 19.02.2023.
//

import Vapor

struct LoginResponse: Content {
    let result: Int
    let user: User?
    let errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
        case result, user
        case errorMessage = "error_message"
    }
}

struct User: Content {
    let userId: Int
    let userLogin: String
    let userName: String
    let userLastname: String
    
    enum CodingKeys: String, CodingKey {
        case userId = "id_user"
        case userLogin = "user_login"
        case userName = "user_name"
        case userLastname = "user_lastname"
    }
}
