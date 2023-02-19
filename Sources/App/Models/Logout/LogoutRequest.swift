//
//  LogoutRequest.swift
//  
//
//  Created by Константин on 19.02.2023.
//

import Vapor

struct LogoutRequest: Content {
    let userId: Int
    
    enum CodingKeys: String, CodingKey {
        case userId = "id_user"
    }
}
