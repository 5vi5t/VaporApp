//
//  ReviewController.swift
//  
//
//  Created by Константин on 23.02.2023.
//

import Vapor

class ReviewController {
    func addReview(_ req: Request) -> EventLoopFuture<AddReviewResponse> {
        guard let body = try? req.content.decode(AddReviewRequest.self),
              body.userId == 123,
              !body.text.isEmpty
        else {
            let errorResponse = AddReviewResponse(
                result: 0,
                userMessage: nil,
                errorMessage: "Сообщение об ошибке")
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = AddReviewResponse(
            result: 1,
            userMessage: "Ваш отзыв был передан на модерацию",
            errorMessage: nil)
        return req.eventLoop.future(successResponse)
    }

    func removeReview(_ req: Request) -> EventLoopFuture<RemoveReviewResponse> {
        guard let body = try? req.content.decode(RemoveReviewRequest.self),
              body.commentId == 123
        else {
            let errorResponse = RemoveReviewResponse(
                result: 0,
                errorMessage: "Сообщение об ошибке")
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = RemoveReviewResponse(
            result: 1,
            errorMessage: nil)
        return req.eventLoop.future(successResponse)
    }

    func reviewList(_ req: Request) -> EventLoopFuture<ReviewListResponse> {
        guard let body = try? req.content.decode(ReviewListRequest.self),
              body.pageNumber == 1,
              body.productId == 123
        else {
            let errorResponse = ReviewListResponse(
                result: 0,
                pageNumber: nil,
                reviews: nil,
                errorMessage: "Сообщение об ошибке")
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = ReviewListResponse(
            result: 1,
            pageNumber: 1,
            reviews: [
                Review(
                    userId: 123,
                    text: "Хороший"),
                Review(
                    userId: 456,
                    text: "Плохой"),
                Review(
                    userId: 789,
                    text: "Злой")
            ],
            errorMessage: nil)
        return req.eventLoop.future(successResponse)
    }
}
