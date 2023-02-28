//
//  AddToBasketResponse.swift
//  
//
//  Created by Константин on 24.02.2023.
//

import Vapor

struct AddToBasketResponse: Content {
    let result: Int
    let errorMessage: String?

    enum CodingKeys: String, CodingKey {
        case result
        case errorMessage = "error_message"
    }
}
