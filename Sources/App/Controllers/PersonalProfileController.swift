//
//  PersonalProfileController.swift
//  
//
//  Created by Константин on 17.02.2023.
//

import Vapor

class PersonalProfileController {
    func registerUser(_ req: Request) -> EventLoopFuture<RegisterUserResponse> {
        guard let body = try? req.content.decode(RegisterUserRequest.self),
              body.username.count >= 3,
              body.password.count >= 8,
              body.email.contains(where: {$0 == "@"}),
              body.gender.contains(where: { $0 == "m" || $0 == "w"}),
              !body.creditCard.isEmpty,
              !body.bio.isEmpty,
              body.userId == 123
        else {
            let errorResponse = RegisterUserResponse(
                result: 0,
                userMessage: nil,
                errorMessage: "Сообщение об ошибке"
            )
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = RegisterUserResponse(
            result: 1,
            userMessage: "Регистрация прошла успешно!",
            errorMessage: nil
        )
        return req.eventLoop.future(successResponse)
    }
    
    func changeUserData(_ req: Request) -> EventLoopFuture<ChangeUserDataResponse> {
        guard let body = try? req.content.decode(RegisterUserRequest.self),
              body.username.count >= 3,
              body.password.count >= 8,
              body.email.contains(where: {$0 == "@"}),
              body.gender.contains(where: { $0 == "m" || $0 == "w"}),
              !body.creditCard.isEmpty,
              !body.bio.isEmpty,
              body.userId == 123
        else {
            let errorResponse = ChangeUserDataResponse(
                result: 0,
                errorMessage: "Сообщение об ошибке"
            )
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = ChangeUserDataResponse(
            result: 1,
            errorMessage: nil
        )
        return req.eventLoop.future(successResponse)
    }
    
    func login(_ req: Request) -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self),
              body.username.count >= 3,
              body.password.count >= 8
        else {
            let errorResponse = LoginResponse(
                result: 0,
                user: nil,
                errorMessage: "Сообщение об ошибке"
            )
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = LoginResponse(
            result: 1,
            user: User(
                userId: 123,
                userLogin: "geekbrains",
                userName: "John",
                userLastname: "Doe"
            ),
            errorMessage: nil
        )
        return req.eventLoop.future(successResponse)
    }
    
    func logout(_ req: Request) -> EventLoopFuture<LogoutResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self),
              body.userId == 123
        else {
            let errorResponse = LogoutResponse(
                result: 0,
                errorMessage: "Сообщение об ошибке"
            )
            return req.eventLoop.future(errorResponse)
        }
        let successResponse = LogoutResponse(
            result: 1,
            errorMessage: nil
        )
        return req.eventLoop.future(successResponse)
    }
}
