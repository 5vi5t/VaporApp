//
//  PayBasketResponse.swift
//  
//
//  Created by Константин on 28.02.2023.
//

import Vapor

struct PayBasketResponse: Content {
    let amount: Int?
    let balance: Int?
    let products: [Product]?
    let result: Int?
    let errorMessage: String?

    enum CodingKeys: String, CodingKey {
        case amount, balance
        case products, result
        case errorMessage = "error_message"
    }
}
