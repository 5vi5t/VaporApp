//
//  RegisterUserRequest.swift
//  
//
//  Created by Константин on 17.02.2023.
//

import Vapor

struct RegisterUserRequest: Content {
    let userId: Int
    let username: String
    let password: String
    let email: String
    let gender: String
    let creditCard: String
    let bio: String
    
    enum CodingKeys: String, CodingKey {
        case username, password, email, gender, bio
        case userId = "id_user"
        case creditCard = "credit_card"
    }
}
