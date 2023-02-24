//
//  AddToBasketRequest.swift
//  
//
//  Created by Константин on 24.02.2023.
//

import Vapor

struct AddToBasketRequest: Content {
    let productId: Int
    let quantity: Int

    enum CodingKeys: String, CodingKey {
        case productId = "id_product"
        case quantity
    }
}
