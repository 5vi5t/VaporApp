//
//  CatalogDataResponse.swift
//  
//
//  Created by Константин on 19.02.2023.
//

import Vapor

struct CatalogDataResponse: Content {
    let pageNumber: Int?
    let products: [Product]?
    let result: Int?
    let errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case products, result
        case errorMessage = "error_message"
    }
}

struct Product: Content {
    let productId: Int
    let productName: String
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case productId = "id_product"
        case productName = "product_name"
        case price
    }
}
