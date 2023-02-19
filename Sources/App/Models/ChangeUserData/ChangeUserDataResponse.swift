//
//  ChangeUserDataResponse.swift
//  
//
//  Created by Константин on 19.02.2023.
//

import Vapor

struct ChangeUserDataResponse: Content {
    let result: Int
    let errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
        case result
        case errorMessage = "error_message"
    }
}
