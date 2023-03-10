//
//  BasketController.swift
//  
//
//  Created by Константин on 24.02.2023.
//

import Vapor

class BasketController {
    func addToBasket(_ req: Request) -> EventLoopFuture<AddToBasketResponse> {
        guard let body = try? req.content.decode(AddToBasketRequest.self),
              body.productId == 123,
              body.quantity == 1
        else {
            let errorResponse = AddToBasketResponse(
                result: 0,
                errorMessage: "Сообщение об ошибке")
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = AddToBasketResponse(
            result: 1,
            errorMessage: nil)
        return req.eventLoop.future(successResponse)
    }

    func deleteFromBasket(_ req: Request) -> EventLoopFuture<DeleteFromBasketResponse> {
        guard let body = try? req.content.decode(DeleteFromBasketRequest.self),
              body.productId == 123
        else {
            let errorResponse = DeleteFromBasketResponse(
                result: 0,
                errorMessage: "Сообщение об ошибке")
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = DeleteFromBasketResponse(
            result: 1,
            errorMessage: nil)
        return req.eventLoop.future(successResponse)
    }

    func payBasket(_ req: Request) -> EventLoopFuture<PayBasketResponse> {
        guard let body = try? req.content.decode(PayBasketRequest.self),
              body.amount > 0,
              !body.amountMethod.isEmpty
        else {
            let errorResponse = PayBasketResponse(
                amount: nil,
                balance: nil,
                products: nil,
                result: 0,
                errorMessage: "Сообщение об ошибке")
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = PayBasketResponse(
            amount: 46600,
            balance: 9999,
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
            result: 1,
            errorMessage: nil)
        return req.eventLoop.future(successResponse)
    }
}
