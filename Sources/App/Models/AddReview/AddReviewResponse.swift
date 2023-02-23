//
//  AddReviewResponse.swift
//  
//
//  Created by Константин on 23.02.2023.
//

import Vapor

struct AddReviewResponse: Content {
    let result: Int
    let userMessage: String?
    let errorMessage: String?

    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
        case errorMessage = "error_message"
    }
}
