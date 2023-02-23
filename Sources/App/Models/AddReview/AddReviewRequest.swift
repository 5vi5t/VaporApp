//
//  AddReviewRequest.swift
//  
//
//  Created by Константин on 23.02.2023.
//

import Vapor

struct AddReviewRequest: Content {
    let userId: Int
    let text: String

    enum CodingKeys: String, CodingKey {
        case userId = "id_user"
        case text
    }
}
