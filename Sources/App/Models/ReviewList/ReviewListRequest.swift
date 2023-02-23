//
//  ReviewListRequest.swift
//  
//
//  Created by Константин on 23.02.2023.
//

import Vapor

struct ReviewListRequest: Content {
    let pageNumber: Int
    let productId: Int

    enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case productId = "id_product"
    }
}
