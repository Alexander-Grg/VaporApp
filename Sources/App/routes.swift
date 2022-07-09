import Vapor

func routes(_ app: Application) throws {
    let authController = AuthController()
    let loginController = LoginController()
    
    app.get { req in
        return "Hey, you're highly welcome to the Alexander's Grigoryev mock server!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    app.post("register", use: authController.register)
    
    app.post("login", use: loginController.login)
}
