//
//  GetGoodByIdResponse.swift
//  
//
//  Created by Константин on 19.02.2023.
//

import Vapor

struct GetGoodByIdResponse: Content {
    let result: Int
    let productName: String?
    let productPrice: Int?
    let productDescription: String?
    let errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
        case result
        case productName = "product_name"
        case productPrice = "product_price"
        case productDescription = "product_description"
        case errorMessage = "error_message"
    }
}
