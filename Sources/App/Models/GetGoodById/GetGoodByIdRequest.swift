//
//  GetGoodByIdRequest.swift
//  
//
//  Created by Константин on 19.02.2023.
//

import Vapor

struct GetGoodByIdRequest: Content {
    let productId: Int
    
    enum CodingKeys: String, CodingKey {
        case productId = "id_product"
    }
}
