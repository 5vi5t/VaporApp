//
//  PayBasketRequest.swift
//  
//
//  Created by Константин on 28.02.2023.
//

import Vapor

struct PayBasketRequest: Content {
    let amount: Int
    let amountMethod: String

    enum CodingKeys: String, CodingKey {
        case amount
        case amountMethod = "amount_method"
    }
}
