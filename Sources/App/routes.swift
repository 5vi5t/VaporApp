import Vapor

func routes(_ app: Application) throws {
    let personalProfileController = PersonalProfileController()
    app.post("registerUser", use: personalProfileController.registerUser)
}
