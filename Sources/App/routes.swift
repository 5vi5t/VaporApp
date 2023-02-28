import Vapor

func routes(_ app: Application) throws {
    let personalProfileController = PersonalProfileController()
    app.post("registerUser", use: personalProfileController.registerUser)
    app.post("changeUserData", use: personalProfileController.changeUserData)
    app.post("login", use: personalProfileController.login)
    app.post("logout", use: personalProfileController.logout)
    
    let catalogController = CatalogController()
    app.post("catalogData", use: catalogController.catalogData)
    app.post("getGoodById", use: catalogController.getGoodById)

    let reviewController = ReviewController()
    app.post("addReview", use: reviewController.addReview)
    app.post("removeReview", use: reviewController.removeReview)
    app.post("reviewList", use: reviewController.reviewList)

    let basketController = BasketController()
    app.post("addToBasket", use: basketController.addToBasket)
    app.post("deleteFromBasket", use: basketController.deleteFromBasket)
    app.post("payBasket", use: basketController.payBasket)
}
