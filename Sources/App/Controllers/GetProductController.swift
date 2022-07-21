//
//  File.swift
//  
//
//  Created by Alexander Grigoryev on 7/10/22.
//

import Vapor

class GetProductController {
    
    let responseSingleProduct = Product(result: 1,
                                        id_product: 007,
                                        product_name: "Test",
                                        price: 20,
                                        id_category: 1,
                                        productReviews: [ProductReviews(review: "test", nameOfReviewer: "Test")])
    

    
    
    func getSingleProduct(_ req: Request) throws -> EventLoopFuture<GetSingleProductResponse> {
        guard let body = try? req.content.decode(GetSingleProductRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        guard let filteredData = productList.filter({$0.id_product == body.id_product}).first
        else {
            throw Abort(.noContent)
        }
        
        let responseProduct = GetSingleProductResponse(products: filteredData)
        
        return req.eventLoop.future(responseProduct)
    }
    
    func getProductsList(_ req: Request) throws -> EventLoopFuture<GetProductListResponse> {
        guard let body = try? req.content.decode(GetProductListRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let filteredData = productList.filter {$0.id_category == body.id_category}
        
        let responseList = GetProductListResponse(products: filteredData)
        
        return req.eventLoop.future(responseList)
    }
    
    
}
