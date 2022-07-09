import Vapor

func routes(_ app: Application) throws {
    let controller = AuthController()
    
    app.get { req in
        return "Hey, you're highly welcome to the Alexander's Grigoryev mock server!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    app.post("register", use: controller.register)
}
