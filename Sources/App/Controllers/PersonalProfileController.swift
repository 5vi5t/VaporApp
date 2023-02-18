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
            return RegisterUserErrorJSON(req)
        }
        return RegisterUserSuccessJSON(req)
    }
    
    fileprivate func RegisterUserErrorJSON(_ req: Request) -> EventLoopFuture<RegisterUserResponse> {
        let response = RegisterUserResponse(
            result: 0,
            userMessage: nil,
            errorMessage: "Сообщение об ошибке"
        )
        return req.eventLoop.future(response)
    }
    
    fileprivate func RegisterUserSuccessJSON(_ req: Request) -> EventLoopFuture<RegisterUserResponse> {
        let response = RegisterUserResponse(
            result: 1,
            userMessage: "Регистрация прошла успешно!",
            errorMessage: nil
        )
        return req.eventLoop.future(response)
    }
}
