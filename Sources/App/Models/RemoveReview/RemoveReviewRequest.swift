//
//  RemoveReviewRequest.swift
//  
//
//  Created by Константин on 23.02.2023.
//

import Vapor

struct RemoveReviewRequest: Content {
    let commentId: Int

    enum CodingKeys: String, CodingKey {
        case commentId = "id_comment"
    }
}
