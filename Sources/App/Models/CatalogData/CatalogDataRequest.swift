//
//  CatalogDataRequest.swift
//  
//
//  Created by Константин on 19.02.2023.
//

import Vapor

struct CatalogDataRequest: Content {
    let pageNumber: Int
    let categoryId: Int
    
    enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case categoryId = "id_category"
    }
}
