import Vapor

func routes(_ app: Application) throws {
    let registerController = RegisterController()
    let authController = AuthController()
    let changeDataController = ChangeDataController()
    let getProductController = GetProductController()
    let addDeleteReviewController = AddDeleteReview()
    let paymentController = PayBasketController()
    
    app.get { req in
        return "Hey, you're highly welcome to the Alexander's Grigoryev mock server!"
    }
    
    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    app.post("register", use: registerController.register)
    
    app.post("login", use: authController.login)
    
    app.post("logout", use: authController.logout)
    
    app.post("changeUserData", use: changeDataController.changeData)
    
    app.post("getProductList", use: getProductController.getProductsList)
    
    app.post("getSingleProduct", use: getProductController.getSingleProduct)
    
    app.put("addReview", use: addDeleteReviewController.addReview)
    
    app.put("deleteReview", use: addDeleteReviewController.deleteReview)
    
    app.post("payBasket", use: paymentController.pay)
}
