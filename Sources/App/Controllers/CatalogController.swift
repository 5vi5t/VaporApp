//
//  CatalogController.swift
//  
//
//  Created by Константин on 19.02.2023.
//

import Vapor

class CatalogController {
    func catalogData(_ req: Request) -> EventLoopFuture<CatalogDataResponse> {
        guard let body = try? req.content.decode(CatalogDataRequest.self),
              body.categoryId == 1,
              body.pageNumber == 1
        else {
            let errorResponse = CatalogDataResponse(
                pageNumber: nil,
                products: nil,
                result: 0,
                errorMessage: "Сообщение об ошибке")
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = CatalogDataResponse(
            pageNumber: 1,
            products: [
                Product(
                    productId: 123,
                    productName: "Ноутбук",
                    price: 45600),
                Product(
                    productId: 456,
                    productName: "Мышка",
                    price: 1000)
            ],
            result: nil,
            errorMessage: nil)
        return req.eventLoop.future(successResponse)
    }

    func getGoodById(_ req: Request) -> EventLoopFuture<GetGoodByIdResponse> {
        guard let body = try? req.content.decode(GetGoodByIdRequest.self),
              body.productId == 123
        else {
            let errorResponse = GetGoodByIdResponse(
                result: 0,
                productName: nil,
                productPrice: nil,
                productDescription: nil,
                errorMessage: "Сообщение об ошибке")
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = GetGoodByIdResponse(
            result: 1,
            productName: "Название",
            productPrice: 123,
            productDescription: "Описание",
            errorMessage: nil)
        return req.eventLoop.future(successResponse)
    }
}
