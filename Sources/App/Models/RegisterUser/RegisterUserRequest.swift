//
//  RegisterUserRequest.swift
//  
//
//  Created by Константин on 17.02.2023.
//

import Vapor

struct RegisterUserRequest: Content {
    var userId: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var creditCard: String
    var bio: String
    
    enum CodingKeys: String, CodingKey {
        case username, password, email, gender, bio
        case userId = "id_user"
        case creditCard = "credit_card"
    }
}
