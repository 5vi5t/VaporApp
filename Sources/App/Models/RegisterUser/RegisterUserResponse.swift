//
//  RegisterUserResponse.swift
//  
//
//  Created by Константин on 17.02.2023.
//

import Vapor

struct RegisterUserResponse: Content {
    var result: Int
    var userMessage: String?
    var errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
        case errorMessage = "error_message"
    }
}
