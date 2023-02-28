//
//  DeleteFromBasketRequest.swift
//  
//
//  Created by Константин on 24.02.2023.
//

import Vapor

struct DeleteFromBasketRequest: Content {
    let productId: Int

    enum CodingKeys: String, CodingKey {
        case productId = "id_product"
    }
}
