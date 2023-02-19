import Vapor

func routes(_ app: Application) throws {
    let personalProfileController = PersonalProfileController()
    app.post("registerUser", use: personalProfileController.registerUser)
    app.post("changeUserData", use: personalProfileController.changeUserData)
    app.post("login", use: personalProfileController.login)
    app.post("logout", use: personalProfileController.logout)
}
