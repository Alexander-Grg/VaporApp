//
//  ChangeDataController.swift
//  
//
//  Created by Alexander Grigoryev on 7/10/22.
//

import Vapor

class ChangeDataController {
    let response = ChangeDataResponse(result: 1)
    
    func changeData(_ req: Request) throws -> EventLoopFuture<ChangeDataResponse> {
        guard let body = try? req.content.decode(ChangeDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        return req.eventLoop.future(response)
    }
}
